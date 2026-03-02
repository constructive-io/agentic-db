import { useCallback, useRef, useState } from 'react';

// ============================================================================
// Deferred Mutation Hook - Smart loading state that skips flicker for fast ops
// ============================================================================

interface DeferredMutationOptions {
  /** Delay before showing loading state (default: 150ms) */
  loadingDelayMs?: number;
  /** Minimum time to show loading once visible (default: 400ms) */
  minLoadingMs?: number;
}

interface DeferredMutationState {
  isLoading: boolean;
  error: string | null;
}

/**
 * Hook for mutation state with smart loading behavior.
 * - If action completes quickly (< loadingDelayMs), loading state is never shown
 * - If action takes longer, loading is shown for at least minLoadingMs
 * This prevents jarring flash of loading state for fast operations.
 *
 * @example
 * ```tsx
 * const mutation = useDeferredMutation({ loadingDelayMs: 150, minLoadingMs: 400 });
 *
 * const handleSubmit = async () => {
 *   await mutation.execute(
 *     () => api.createItem(data),
 *     (err) => getHumanReadableError(err)
 *   );
 * };
 *
 * return (
 *   <form>
 *     {mutation.error && <Alert>{mutation.error}</Alert>}
 *     {mutation.isLoading && <Spinner />}
 *     <button disabled={mutation.isLoading}>Submit</button>
 *   </form>
 * );
 * ```
 */
export function useDeferredMutation(options?: DeferredMutationOptions) {
  const { loadingDelayMs = 150, minLoadingMs = 400 } = options ?? {};

  const [state, setState] = useState<DeferredMutationState>({
    isLoading: false,
    error: null,
  });

  // Refs for timing - avoid re-renders
  const loadingTimeoutRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const loadingShownAtRef = useRef<number | null>(null);

  const execute = useCallback(
    async (
      action: () => Promise<void>,
      formatError: (err: unknown) => string = String
    ): Promise<boolean> => {
      // Clear previous timeout
      if (loadingTimeoutRef.current) {
        clearTimeout(loadingTimeoutRef.current);
        loadingTimeoutRef.current = null;
      }
      loadingShownAtRef.current = null;

      // Reset error, but don't show loading yet
      setState({ isLoading: false, error: null });

      // Schedule delayed loading state
      loadingTimeoutRef.current = setTimeout(() => {
        loadingShownAtRef.current = Date.now();
        setState((prev) => ({ ...prev, isLoading: true }));
      }, loadingDelayMs);

      try {
        await action();

        // If loading was shown, ensure minimum display time
        if (loadingShownAtRef.current) {
          const elapsed = Date.now() - loadingShownAtRef.current;
          if (elapsed < minLoadingMs) {
            await new Promise((r) => setTimeout(r, minLoadingMs - elapsed));
          }
        }

        // Clear timeout and finish
        if (loadingTimeoutRef.current) {
          clearTimeout(loadingTimeoutRef.current);
        }
        setState({ isLoading: false, error: null });

        return true;
      } catch (err) {
        // If loading was shown, ensure minimum display time before showing error
        if (loadingShownAtRef.current) {
          const elapsed = Date.now() - loadingShownAtRef.current;
          if (elapsed < minLoadingMs) {
            await new Promise((r) => setTimeout(r, minLoadingMs - elapsed));
          }
        }

        // Clear timeout and show error
        if (loadingTimeoutRef.current) {
          clearTimeout(loadingTimeoutRef.current);
        }
        setState({ isLoading: false, error: formatError(err) });

        return false;
      }
    },
    [loadingDelayMs, minLoadingMs]
  );

  const setError = useCallback((errorMessage: string) => {
    setState({ isLoading: false, error: errorMessage });
  }, []);

  const reset = useCallback(() => {
    if (loadingTimeoutRef.current) {
      clearTimeout(loadingTimeoutRef.current);
      loadingTimeoutRef.current = null;
    }
    setState({ isLoading: false, error: null });
  }, []);

  return {
    ...state,
    execute,
    setError,
    reset,
  };
}
