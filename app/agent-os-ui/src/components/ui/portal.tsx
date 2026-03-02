'use client';

import * as React from 'react';

// ============================================================================
// Types
// ============================================================================

/**
 * Overlay layer type:
 * - 'base': Root level (page content, base floating elements)
 * - 'modal': Inside a modal overlay (dialog, sheet, drawer)
 */
export type OverlayLayer = 'base' | 'modal';

/**
 * Where floating overlays should portal:
 * - 'root': always portal into #portal-root
 * - 'nested': let Base UI nest portals into the nearest Base UI portal node
 */
export type FloatingPortalStrategy = 'root' | 'nested';

/**
 * Z-index mode for floating overlays.
 * - 'default': --z-layer-floating
 * - 'elevated': --z-layer-floating-elevated
 */
export type FloatingZIndex = 'default' | 'elevated';

interface PortalContextValue {
	/** Current overlay layer */
	layer: OverlayLayer;
	/** Modal nesting depth (0 for first modal, 1 for nested, etc.) */
	depth: number;
	/** Strategy for where floating overlays should portal */
	floatingPortalStrategy: FloatingPortalStrategy;
	/** Z-index mode for floating overlays */
	floatingZIndex: FloatingZIndex;
}

// ============================================================================
// Constants
// ============================================================================

export const PORTAL_ROOT_ID = 'portal-root';

// ============================================================================
// Context
// ============================================================================

const PortalContext = React.createContext<PortalContextValue>({
	layer: 'base',
	depth: 0,
	floatingPortalStrategy: 'root',
	floatingZIndex: 'default',
});

// ============================================================================
// Providers
// ============================================================================

/**
 * Provider for modal overlays (Dialog, Sheet, Drawer, etc.)
 *
 * Wraps modal content to:
 * 1. Create a scoped portal container for nested floating elements
 * 2. Track the overlay layer (so floating elements know to use elevated z-index)
 * 3. Track nesting depth for stacked modals
 *
 * Usage:
 * ```tsx
 * <DialogPopup>
 *   <ModalPortalScope>
 *     {children} // Popovers inside here will render in the scoped container
 *   </ModalPortalScope>
 * </DialogPopup>
 * ```
 */
export function ModalPortalScope({
	children,
	floatingPortalStrategy = 'nested',
	floatingZIndex = 'default',
}: {
	children: React.ReactNode;
	floatingPortalStrategy?: FloatingPortalStrategy;
	floatingZIndex?: FloatingZIndex;
}) {
	const parentContext = React.useContext(PortalContext);

	// Increment depth from parent if already in modal layer
	const depth = parentContext.layer === 'modal' ? parentContext.depth + 1 : 0;

	const value = React.useMemo<PortalContextValue>(
		() => ({
			layer: 'modal',
			depth,
			floatingPortalStrategy,
			floatingZIndex,
		}),
		[depth, floatingPortalStrategy, floatingZIndex],
	);

	return <PortalContext.Provider value={value}>{children}</PortalContext.Provider>;
}

// ============================================================================
// Hooks
// ============================================================================

/**
 * Get the current portal context value.
 * Used internally by other hooks.
 */
export function usePortalContext(): PortalContextValue {
	return React.useContext(PortalContext);
}

export function useInModalOverlay(): boolean {
	return React.useContext(PortalContext).layer === 'modal';
}

/**
 * Get the root portal container element.
 * Used by modal components (Dialog, Sheet, etc.) to render their portals.
 *
 * @returns The root portal container, or null during SSR/before mount
 */
export function useRootPortalContainer(): HTMLElement | null {
	const [container, setContainer] = React.useState<HTMLElement | null>(null);

	React.useLayoutEffect(() => {
		const el = document.getElementById(PORTAL_ROOT_ID);
		setContainer(el);
	}, []);

	return container;
}

/**
 * Centralized portal + z-index policy for floating overlays.
 *
 * - When `floatingPortalStrategy` is 'nested', Base UI will automatically portal
 *   into the nearest Base UI portal node (so dialog "inert" behavior includes it).
 * - When it's 'root', we portal into #portal-root.
 */
export function useFloatingOverlayPortalProps(): {
	container?: HTMLElement | null;
	zIndexClass: string;
} {
	const rootContainer = useRootPortalContainer();
	const { floatingPortalStrategy, floatingZIndex } = React.useContext(PortalContext);

	const container = floatingPortalStrategy === 'nested' ? undefined : (rootContainer ?? null);
	const zIndexClass =
		floatingZIndex === 'elevated'
			? 'z-[var(--z-layer-floating-elevated)]'
			: 'z-[var(--z-layer-floating)]';

	return { container, zIndexClass };
}

// ============================================================================
// Components
// ============================================================================

/**
 * Portal root component to render in app layout.
 * All overlay components will render their portals inside this container.
 *
 * Usage in layout.tsx:
 * ```tsx
 * import { PortalRoot } from '@/components/ui/portal';
 *
 * export default function RootLayout({ children }) {
 *   return (
 *     <html>
 *       <body>
 *         {children}
 *         <PortalRoot />
 *       </body>
 *     </html>
 *   );
 * }
 * ```
 */
export function PortalRoot() {
	return (
		<div
			id={PORTAL_ROOT_ID}
			data-slot="portal-root"
			style={{
				position: 'fixed',
				inset: 0,
				zIndex: 'var(--z-layer-portal-root)',
				pointerEvents: 'none',
				// Children (portal contents) will have pointer-events: auto
			}}
		/>
	);
}

/**
 * Hook to get the portal container element for rendering floating UI elements.
 * Returns the element with id="portal-root" if it exists in the DOM.
 *
 * @deprecated Use useRootPortalContainer or useFloatingOverlayPortalProps instead
 */
export function usePortalContainer(): HTMLElement | undefined {
	if (typeof document === 'undefined') return undefined;
	const el = document.getElementById(PORTAL_ROOT_ID);
	return el instanceof HTMLElement ? el : undefined;
}
