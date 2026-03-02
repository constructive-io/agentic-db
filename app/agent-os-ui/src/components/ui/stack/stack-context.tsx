'use client';

import * as React from 'react';
import { createContext, useContext, useEffect, useMemo, useReducer, useRef, useState } from 'react';

import type {
  CardId,
  CardPushOptions,
  CardSpec,
  CardStackApi,
  CardStackProviderProps,
  DismissOptions,
  LayoutMode,
  PushOptions,
  StackAction,
  StackContextValue,
  StackState,
} from './stack.types';

// =============================================================================
// Constants
// =============================================================================

const DEFAULT_Z_INDEX_BASE = 100;
const DEFAULT_PEEK_OFFSET = 48;
const DEFAULT_WIDTH = 480;

// =============================================================================
// Reducer
// =============================================================================

function stackReducer(state: StackState, action: StackAction): StackState {
  switch (action.type) {
    case 'PUSH': {
      // Remove existing card with same ID to prevent duplicates
      const filtered = state.cards.filter((c) => c.id !== action.card.id);
      return { cards: [...filtered, action.card] };
    }

    case 'POP': {
      const count = Math.max(1, action.count);
      if (state.cards.length === 0) return state;
      return { cards: state.cards.slice(0, -count) };
    }

    case 'POP_TO': {
      const index = state.cards.findIndex((c) => c.id === action.id);
      if (index === -1) return state;
      return { cards: state.cards.slice(0, index + 1) };
    }

    case 'REPLACE_TOP': {
      if (state.cards.length === 0) {
        return { cards: [action.card] };
      }
      const newCards = [...state.cards];
      newCards[newCards.length - 1] = action.card;
      return { cards: newCards };
    }

    case 'RESET': {
      return { cards: action.cards };
    }

    case 'CLEAR': {
      return { cards: [] };
    }

    case 'UPDATE_PROPS': {
      const index = state.cards.findIndex((c) => c.id === action.id);
      if (index === -1) return state;

      const card = state.cards[index];
      const prevProps = (card.props ?? {}) as Record<string, unknown>;
      const newProps =
        typeof action.patch === 'function'
          ? (action.patch as (prev: unknown) => unknown)(card.props)
          : { ...prevProps, ...(action.patch as Record<string, unknown>) };

      const newCards = [...state.cards];
      newCards[index] = { ...card, props: newProps };
      return { cards: newCards };
    }

    case 'SET_TITLE': {
      const index = state.cards.findIndex((c) => c.id === action.id);
      if (index === -1) return state;

      const newCards = [...state.cards];
      newCards[index] = { ...newCards[index], title: action.title };
      return { cards: newCards };
    }

    case 'SET_DESCRIPTION': {
      const index = state.cards.findIndex((c) => c.id === action.id);
      if (index === -1) return state;

      const newCards = [...state.cards];
      newCards[index] = { ...newCards[index], description: action.description };
      return { cards: newCards };
    }

    case 'SET_WIDTH': {
      const index = state.cards.findIndex((c) => c.id === action.id);
      if (index === -1) return state;

      const newCards = [...state.cards];
      newCards[index] = { ...newCards[index], width: action.width };
      return { cards: newCards };
    }

    case 'DISMISS': {
      const index = state.cards.findIndex((c) => c.id === action.id);
      if (index === -1) return state;

      if (action.cascade) {
        // Cascade: remove this card and all cards above it
        return { cards: state.cards.slice(0, index) };
      } else {
        // No cascade: remove only this specific card
        return { cards: state.cards.filter((c) => c.id !== action.id) };
      }
    }

    case 'INSERT_AT': {
      const clampedIndex = Math.max(0, Math.min(action.index, state.cards.length));
      // Remove existing card with same ID
      const filtered = state.cards.filter((c) => c.id !== action.card.id);
      const newCards = [...filtered];
      newCards.splice(clampedIndex, 0, action.card);
      return { cards: newCards };
    }

    default:
      return state;
  }
}

// =============================================================================
// Context
// =============================================================================

const StackContext = createContext<StackContextValue | null>(null);

// =============================================================================
// Provider
// =============================================================================

export function CardStackProvider({
  children,
  routes = {},
  initial = [],
  onChange,
  zIndexBase = DEFAULT_Z_INDEX_BASE,
  layoutMode = 'cascade',
  defaultPeekOffset = DEFAULT_PEEK_OFFSET,
  defaultWidth = DEFAULT_WIDTH,
}: CardStackProviderProps) {
  const [state, dispatch] = useReducer(stackReducer, { cards: initial });

  // Track previous cards for onChange callback and onClose detection
  const prevCardsRef = useRef(state.cards);

  // Call onChange when cards change, and onClose for removed cards
  useEffect(() => {
    if (prevCardsRef.current !== state.cards) {
      const prevCards = prevCardsRef.current;
      const currentIds = new Set(state.cards.map((c) => c.id));

      // Find removed cards and call their onClose callbacks
      for (const card of prevCards) {
        if (!currentIds.has(card.id)) {
          card.onClose?.();
        }
      }

      prevCardsRef.current = state.cards;
      onChange?.(state.cards);
    }
  }, [state.cards, onChange]);

  // Stable routes ref for API methods
  const routesRef = useRef(routes);
  routesRef.current = routes;

  // State ref for API methods (avoid stale closures)
  const stateRef = useRef(state);
  stateRef.current = state;

  // Build stable API object
  const api = useMemo<CardStackApi>(() => {
    // Read operations use stateRef to get current state
    const top = () => {
      const cards = stateRef.current.cards;
      return cards.length > 0 ? cards[cards.length - 1] : null;
    };

    const currentId = () => top()?.id ?? null;

    const canPop = () => stateRef.current.cards.length > 0;

    const size = () => stateRef.current.cards.length;

    const get = (id: CardId) => stateRef.current.cards.find((c) => c.id === id) ?? null;

    const getAll = () => [...stateRef.current.cards];

    const has = (id: CardId) => stateRef.current.cards.some((c) => c.id === id);

    // Navigation operations
    const push = <P,>(card: CardSpec<P>, options?: PushOptions) => {
      // If replaceFrom is specified, first remove all cards above that card
      if (options?.replaceFrom) {
        const fromIndex = stateRef.current.cards.findIndex((c) => c.id === options.replaceFrom);
        if (fromIndex !== -1 && fromIndex < stateRef.current.cards.length - 1) {
          // Pop cards above the 'from' card
          dispatch({ type: 'POP_TO', id: options.replaceFrom });
        }
      }
      dispatch({ type: 'PUSH', card: card as CardSpec });
      return card.id;
    };

    const pushRoute = <P,>(
      route: string,
      props?: P,
      opts?: { id?: CardId; title?: string; width?: string | number },
    ) => {
      const routeDef = routesRef.current[route];
      if (!routeDef) {
        throw new Error(`Stack: Route "${route}" not found in registry`);
      }

      const id = opts?.id ?? routeDef.getId?.(props) ?? route;
      const card: CardSpec<P> = {
        id,
        title: opts?.title ?? routeDef.defaultTitle,
        Component: routeDef.Component as CardSpec<P>['Component'],
        props,
        width: opts?.width ?? routeDef.defaultWidth,
        peekOffset: routeDef.defaultPeekOffset,
      };

      dispatch({ type: 'PUSH', card: card as CardSpec });
      return id;
    };

    const pop = (count = 1) => {
      dispatch({ type: 'POP', count });
    };

    const popTo = (id: CardId) => {
      dispatch({ type: 'POP_TO', id });
    };

    const replaceTop = <P,>(card: CardSpec<P>) => {
      dispatch({ type: 'REPLACE_TOP', card: card as CardSpec });
      return card.id;
    };

    const reset = (cards: CardSpec[]) => {
      dispatch({ type: 'RESET', cards });
    };

    const clear = () => {
      dispatch({ type: 'CLEAR' });
    };

    // Update operations
    const updateProps = <P,>(id: CardId, patch: Partial<P> | ((prev: P) => P)) => {
      dispatch({ type: 'UPDATE_PROPS', id, patch });
    };

    const setTitle = (id: CardId, title?: string) => {
      dispatch({ type: 'SET_TITLE', id, title });
    };

    const setDescription = (id: CardId, description?: string) => {
      dispatch({ type: 'SET_DESCRIPTION', id, description });
    };

    const setWidth = (id: CardId, width?: string | number) => {
      dispatch({ type: 'SET_WIDTH', id, width });
    };

    // Advanced operations
    const dismiss = (id: CardId, options?: DismissOptions) => {
      const cascade = options?.cascade ?? true; // Default: cascade
      dispatch({ type: 'DISMISS', id, cascade });
    };

    const insertAt = <P,>(index: number, card: CardSpec<P>) => {
      dispatch({ type: 'INSERT_AT', index, card: card as CardSpec });
      return card.id;
    };

    return {
      top,
      currentId,
      canPop,
      size,
      get,
      getAll,
      has,
      push,
      pushRoute,
      pop,
      popTo,
      replaceTop,
      reset,
      clear,
      updateProps,
      setTitle,
      setDescription,
      setWidth,
      dismiss,
      insertAt,
    };
  }, []); // Empty deps - API is stable, uses refs internally

  // Global escape key handler - pop top card only
  useEffect(() => {
    const handleEscape = (event: KeyboardEvent) => {
      if (event.key === 'Escape' && stateRef.current.cards.length > 0) {
        event.preventDefault();
        event.stopPropagation();
        api.pop();
      }
    };

    document.addEventListener('keydown', handleEscape, true);
    return () => document.removeEventListener('keydown', handleEscape, true);
  }, [api]);

  const contextValue = useMemo<StackContextValue>(
    () => ({
      state,
      api,
      config: {
        routes,
        zIndexBase,
        layoutMode,
        defaultPeekOffset,
        defaultWidth,
      },
    }),
    [state, api, routes, zIndexBase, layoutMode, defaultPeekOffset, defaultWidth],
  );

  return <StackContext.Provider value={contextValue}>{children}</StackContext.Provider>;
}

// =============================================================================
// Hooks
// =============================================================================

export function useCardStack(): CardStackApi {
  const context = useContext(StackContext);
  if (!context) {
    throw new Error('useCardStack must be used within a CardStackProvider');
  }
  return context.api;
}

export function useStackContext(): StackContextValue {
  const context = useContext(StackContext);
  if (!context) {
    throw new Error('useStackContext must be used within a CardStackProvider');
  }
  return context;
}

/** Hook to get current layout mode */
export function useStackLayoutMode(): LayoutMode {
  const context = useStackContext();
  return context.config.layoutMode;
}

/** Hook to get stack cards (triggers re-render on change) */
export function useStackCards(): CardSpec[] {
  const context = useStackContext();
  return context.state.cards;
}

/** Hook to check if a card is the top card */
export function useIsTopCard(id: CardId): boolean {
  const context = useStackContext();
  const cards = context.state.cards;
  return cards.length > 0 && cards[cards.length - 1].id === id;
}

/** Hook to get card index in stack */
export function useCardIndex(id: CardId): number {
  const context = useStackContext();
  return context.state.cards.findIndex((c) => c.id === id);
}

/** Create injected card props for a specific card */
export function useCardInjectedProps(id: CardId) {
  const api = useCardStack();

  return useMemo(
    () => ({
      card: {
        id,
        push: <P,>(
          card: Omit<CardSpec<P>, 'id'> & { id?: CardId },
          options?: CardPushOptions,
        ): CardId => {
          // Generate ID if not provided
          const cardId = card.id ?? `${id}-child-${Date.now()}`;
          const fullCard = { ...card, id: cardId } as CardSpec<P>;

          if (options?.append) {
            // Escape hatch: just push on top of the stack
            return api.push(fullCard);
          } else {
            // Default: replace cards above this card, then push
            return api.push(fullCard, { replaceFrom: id });
          }
        },
        close: () => api.dismiss(id),
        setTitle: (title?: string) => api.setTitle(id, title),
        setDescription: (description?: string) => api.setDescription(id, description),
        setWidth: (width?: string | number) => api.setWidth(id, width),
        updateProps: <P,>(patch: Partial<P> | ((prev: P) => P)) => api.updateProps(id, patch),
      },
    }),
    [id, api],
  );
}

// =============================================================================
// Card Ready Context - for deferring data loading until after animation
// =============================================================================

interface CardReadyContextValue {
  /** True when the card's enter animation has completed */
  isAnimationComplete: boolean;
}

const CardReadyContext = createContext<CardReadyContextValue | null>(null);

/** Provider for card animation state - used internally by StackCard */
export function CardReadyProvider({
  children,
  isAnimationComplete,
}: {
  children: React.ReactNode;
  isAnimationComplete: boolean;
}) {
  const value = useMemo(() => ({ isAnimationComplete }), [isAnimationComplete]);
  return <CardReadyContext.Provider value={value}>{children}</CardReadyContext.Provider>;
}

/**
 * Hook to check if the card's enter animation is complete.
 * Use this to defer data fetching until after the slide-in animation.
 *
 * @example
 * ```tsx
 * function MyCard() {
 *   const { isReady } = useCardReady();
 *
 *   // Data query that only runs after animation completes
 *   const { data, isLoading } = useQuery({
 *     queryKey: ['myData'],
 *     queryFn: fetchData,
 *     enabled: isReady, // Don't fetch until animation done
 *   });
 *
 *   return (
 *     <Select disabled={isLoading || !isReady}>
 *       {data?.map(item => <SelectItem key={item.id}>{item.name}</SelectItem>)}
 *     </Select>
 *   );
 * }
 * ```
 */
export function useCardReady(): { isReady: boolean } {
  const context = useContext(CardReadyContext);

  // If not in a card context (standalone usage), assume ready immediately
  if (!context) {
    return { isReady: true };
  }

  return { isReady: context.isAnimationComplete };
}
