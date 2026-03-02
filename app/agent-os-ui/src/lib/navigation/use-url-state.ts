/**
 * URL State Hooks - nuqs-based state management for transient UI state
 *
 * These hooks use nuqs to manage UI state in URL query parameters,
 * making the state shareable and bookmarkable.
 *
 * Benefits:
 * - State persists across page refreshes
 * - URLs are shareable with state intact
 * - Browser back/forward restores state
 * - Type-safe with nuqs parsers
 */
'use client';

import { parseAsString, parseAsInteger, parseAsArrayOf, useQueryState, useQueryStates } from 'nuqs';

// =============================================================================
// TABLE SELECTION - Which table is currently selected in the database view
// =============================================================================

/**
 * Hook for managing selected table ID in URL.
 * Used in database views to track which table is being viewed/edited.
 *
 * @example
 * ```tsx
 * const [tableId, setTableId] = useTableSelection();
 *
 * // Select a table
 * setTableId('users');
 *
 * // Clear selection
 * setTableId(null);
 * ```
 */
export function useTableSelection() {
	return useQueryState('table', parseAsString);
}

// =============================================================================
// TAB STATE - Active tab in tabbed views
// =============================================================================

/**
 * Hook for managing active tab in URL.
 * Used in views with multiple tabs (e.g., diagram vs schemas view).
 *
 * @param defaultTab - Default tab value if not in URL
 *
 * @example
 * ```tsx
 * const [tab, setTab] = useTabState('diagram');
 *
 * <Tabs value={tab} onValueChange={setTab}>
 *   <TabsTrigger value="diagram">Diagram</TabsTrigger>
 *   <TabsTrigger value="schemas">Schemas</TabsTrigger>
 * </Tabs>
 * ```
 */
export function useTabState(defaultTab: string = 'diagram') {
	return useQueryState('tab', parseAsString.withDefault(defaultTab));
}

// =============================================================================
// PAGINATION STATE - Page, limit, and total count
// =============================================================================

/**
 * Result from usePaginationState hook
 */
export interface PaginationState {
	page: number;
	limit: number;
}

/**
 * Hook for managing pagination state in URL.
 *
 * @example
 * ```tsx
 * const [{ page, limit }, setPagination] = usePaginationState();
 *
 * // Change page
 * setPagination({ page: 2 });
 *
 * // Change limit (resets to page 1)
 * setPagination({ limit: 50, page: 1 });
 * ```
 */
export function usePaginationState(options?: { defaultPage?: number; defaultLimit?: number }) {
	const { defaultPage = 1, defaultLimit = 20 } = options ?? {};

	return useQueryStates({
		page: parseAsInteger.withDefault(defaultPage),
		limit: parseAsInteger.withDefault(defaultLimit),
	});
}

// =============================================================================
// SEARCH STATE - Search query and filters
// =============================================================================

/**
 * Hook for managing search query in URL.
 *
 * @example
 * ```tsx
 * const [search, setSearch] = useSearchState();
 *
 * <Input
 *   value={search ?? ''}
 *   onChange={(e) => setSearch(e.target.value || null)}
 *   placeholder="Search..."
 * />
 * ```
 */
export function useSearchState() {
	return useQueryState('search', parseAsString);
}

// =============================================================================
// SORT STATE - Sorting configuration
// =============================================================================

/**
 * Result from useSortState hook
 */
export interface SortState {
	sort: string;
	order: 'asc' | 'desc';
}

/**
 * Hook for managing sort state in URL.
 *
 * @example
 * ```tsx
 * const [{ sort, order }, setSort] = useSortState();
 *
 * // Change sort field
 * setSort({ sort: 'name' });
 *
 * // Toggle order
 * setSort({ order: order === 'asc' ? 'desc' : 'asc' });
 * ```
 */
export function useSortState(options?: { defaultSort?: string; defaultOrder?: 'asc' | 'desc' }) {
	const { defaultSort = 'name', defaultOrder = 'asc' } = options ?? {};

	return useQueryStates({
		sort: parseAsString.withDefault(defaultSort),
		order: parseAsString.withDefault(defaultOrder),
	}) as [{ sort: string; order: 'asc' | 'desc' }, (state: Partial<{ sort: string; order: 'asc' | 'desc' }>) => Promise<URLSearchParams>];
}

// =============================================================================
// SELECTION STATE - Multi-select for batch operations
// =============================================================================

/**
 * Hook for managing selected items in URL (for batch operations).
 *
 * @example
 * ```tsx
 * const [selected, setSelected] = useSelectionState();
 *
 * // Select items
 * setSelected(['id-1', 'id-2']);
 *
 * // Clear selection
 * setSelected(null);
 *
 * // Toggle item
 * const toggleItem = (id: string) => {
 *   const current = selected ?? [];
 *   if (current.includes(id)) {
 *     setSelected(current.filter(i => i !== id));
 *   } else {
 *     setSelected([...current, id]);
 *   }
 * };
 * ```
 */
export function useSelectionState() {
	return useQueryState('selected', parseAsArrayOf(parseAsString));
}

// =============================================================================
// COMBINED TABLE VIEW STATE - All state for table/grid views
// =============================================================================

/**
 * Combined state for table/grid views.
 * Includes search, sort, pagination, and selection.
 */
export interface TableViewState {
	search: string | null;
	sort: string;
	order: string;
	page: number;
	limit: number;
	selected: string[] | null;
}

/**
 * Hook for managing all table view state in URL.
 * Combines search, sort, pagination, and selection into one hook.
 *
 * @example
 * ```tsx
 * const [state, setState] = useTableViewState();
 *
 * // Update search (resets page to 1)
 * setState({ search: 'query', page: 1 });
 *
 * // Update sort
 * setState({ sort: 'createdAt', order: 'desc' });
 * ```
 */
export function useTableViewState(options?: {
	defaultSort?: string;
	defaultOrder?: string;
	defaultPage?: number;
	defaultLimit?: number;
}) {
	const { defaultSort = 'name', defaultOrder = 'asc', defaultPage = 1, defaultLimit = 20 } = options ?? {};

	return useQueryStates({
		search: parseAsString,
		sort: parseAsString.withDefault(defaultSort),
		order: parseAsString.withDefault(defaultOrder),
		page: parseAsInteger.withDefault(defaultPage),
		limit: parseAsInteger.withDefault(defaultLimit),
		selected: parseAsArrayOf(parseAsString),
	});
}

// =============================================================================
// VIEW MODE STATE - Grid vs list view
// =============================================================================

/**
 * Hook for managing view mode (grid/list) in URL.
 *
 * @example
 * ```tsx
 * const [viewMode, setViewMode] = useViewModeState();
 *
 * <ViewToggle value={viewMode} onChange={setViewMode} />
 * ```
 */
export function useViewModeState(defaultMode: 'grid' | 'list' = 'grid') {
	return useQueryState('view', parseAsString.withDefault(defaultMode)) as [
		'grid' | 'list',
		(value: 'grid' | 'list' | null) => Promise<URLSearchParams>
	];
}

// =============================================================================
// FIELD SELECTION - Selected field within a table
// =============================================================================

/**
 * Hook for managing selected field ID in URL.
 * Used in schema builder when editing a specific field.
 *
 * @example
 * ```tsx
 * const [fieldId, setFieldId] = useFieldSelection();
 *
 * // Select a field
 * setFieldId('field-123');
 * ```
 */
export function useFieldSelection() {
	return useQueryState('field', parseAsString);
}

// =============================================================================
// FILTER STATE - Type/status filters
// =============================================================================

/**
 * Hook for managing filter state in URL.
 * Used for filtering by type, status, or other categorical values.
 *
 * @example
 * ```tsx
 * const [type, setType] = useFilterState('type');
 * const [status, setStatus] = useFilterState('status');
 *
 * <Select value={type ?? ''} onValueChange={(v) => setType(v || null)}>
 *   <SelectItem value="core">Core</SelectItem>
 *   <SelectItem value="app">App</SelectItem>
 * </Select>
 * ```
 */
export function useFilterState(filterKey: string) {
	return useQueryState(filterKey, parseAsString);
}

// =============================================================================
// UTILITY: Clear all URL state
// =============================================================================

/**
 * Hook to clear specific URL query params.
 * Useful for "Reset Filters" buttons.
 *
 * @example
 * ```tsx
 * const [, setState] = useTableViewState();
 *
 * const handleReset = () => {
 *   setState({
 *     search: null,
 *     sort: 'name',
 *     order: 'asc',
 *     page: 1,
 *     selected: null,
 *   });
 * };
 * ```
 */
