/**
 * Hook for fetching all app users (admin only)
 * Lists all users with app memberships for admin management
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 */
import { useQuery, useQueryClient } from '@tanstack/react-query';

import { useAppStore } from '@/store/app-store';
import type { SchemaContext } from '@/app-config';
import {
	fetchAppMembershipsQuery,
	useUpdateAppMembershipMutation,
	fetchUsersQuery,
} from '@sdk/api';

interface ActorNode {
	id: string;
	displayName: string | null;
	username: string | null;
	profilePicture: unknown | null;
}

interface AppUserNode {
	id: string;
	actorId: string;
	isAdmin: boolean;
	isOwner: boolean;
	isActive: boolean;
	isApproved: boolean;
	isBanned: boolean;
	isDisabled: boolean;
	isVerified: boolean;
	permissions: unknown;
	granted: unknown;
	actor: ActorNode | null;
}

interface QueryResult {
	appMemberships: {
		nodes: AppUserNode[];
		totalCount: number;
		pageInfo: {
			hasNextPage: boolean;
			hasPreviousPage: boolean;
		};
	} | null;
}


/** AppMembershipsOrderBy enum values */
export const AppMembershipsOrderBy = {
	ActorIdAsc: 'ACTOR_ID_ASC',
	ActorIdDesc: 'ACTOR_ID_DESC',
	IsAdminAsc: 'IS_ADMIN_ASC',
	IsAdminDesc: 'IS_ADMIN_DESC',
	IsOwnerAsc: 'IS_OWNER_ASC',
	IsOwnerDesc: 'IS_OWNER_DESC',
} as const;

export type AppMembershipsOrderByType = (typeof AppMembershipsOrderBy)[keyof typeof AppMembershipsOrderBy];

export type AppUser = AppUserNode;

export interface UseAppUsersOptions {
	/** Enable/disable the query */
	enabled?: boolean;
	/** Page size */
	first?: number;
	/** Offset for pagination */
	offset?: number;
	/** Filter options */
	filter?: {
		isActive?: boolean;
		isAdmin?: boolean;
		isBanned?: boolean;
	};
	/** Sort order */
	orderBy?: AppMembershipsOrderByType[];
	/** Override schema context (defaults to schema-builder) */
	context?: SchemaContext;
}

export interface UseAppUsersResult {
	/** Array of app user objects */
	users: AppUser[];
	/** Total count of all users */
	totalCount: number;
	/** Loading state */
	isLoading: boolean;
	/** Error state */
	error: Error | null;
	/** Pagination info */
	pageInfo: {
		hasNextPage: boolean;
		hasPreviousPage: boolean;
	};
	/** Refetch function */
	refetch: () => Promise<unknown>;
}

/**
 * Hook for fetching all app users (admin only)
 *
 * @example
 * ```tsx
 * const { users, totalCount, isLoading } = useAppUsers();
 *
 * // With filters
 * const { users } = useAppUsers({
 *   filter: { isActive: true },
 *   first: 20,
 *   offset: 0
 * });
 * ```
 */
export function useAppUsers(options: UseAppUsersOptions = {}): UseAppUsersResult {
	const {
		enabled = true,
		first = 50,
		offset = 0,
		filter,
		orderBy = [AppMembershipsOrderBy.ActorIdAsc as AppMembershipsOrderByType],
		context = 'schema-builder',
	} = options;

	const isAuthenticated = useAppStore((state) => state.auth.isAuthenticated);

	// Build filter object for GraphQL
	const graphqlFilter = filter
		? {
				...(filter.isActive !== undefined && { isActive: { equalTo: filter.isActive } }),
				...(filter.isAdmin !== undefined && { isAdmin: { equalTo: filter.isAdmin } }),
				...(filter.isBanned !== undefined && { isBanned: { equalTo: filter.isBanned } }),
			}
		: undefined;

	const { data, isLoading, error, refetch } = useQuery<QueryResult>({
		queryKey: appUsersQueryKeys.list(context, { first, offset, filter, orderBy }),
		queryFn: async (): Promise<QueryResult> => {
			// Step 1: Fetch app memberships
			const membershipsResult = await fetchAppMembershipsQuery({
				selection: {
					fields: {
						id: true,
						actorId: true,
						isAdmin: true,
						isOwner: true,
						isActive: true,
						isApproved: true,
						isBanned: true,
						isDisabled: true,
						isVerified: true,
						permissions: true,
						granted: true,
					},
					first,
					offset,
					where: graphqlFilter,
					orderBy: orderBy as AppMembershipsOrderByType[],
				},
			});

			const memberships = membershipsResult.appMemberships?.nodes ?? [];
			const totalCount = membershipsResult.appMemberships?.totalCount ?? 0;
			const pageInfo = membershipsResult.appMemberships?.pageInfo ?? {
				hasNextPage: false,
				hasPreviousPage: false,
			};

			if (memberships.length === 0) {
				return {
					appMemberships: { nodes: [], totalCount: 0, pageInfo: { hasNextPage: false, hasPreviousPage: false } },
				};
			}

			// Step 2: Fetch actors (users) for all memberships
			const actorIds = [...new Set(memberships.map((m) => m.actorId).filter((id): id is string => !!id))];
			const usersResult = await fetchUsersQuery({
				selection: {
					fields: {
						id: true,
						displayName: true,
						username: true,
						profilePicture: true,
					},
					where: { id: { in: actorIds } },
				},
			});

			// Build a map of actorId -> user for fast lookup
			const actorMap = new Map<string, ActorNode>();
			for (const user of usersResult.users?.nodes ?? []) {
				if (user.id) {
					actorMap.set(user.id, {
						id: user.id,
						displayName: user.displayName ?? null,
						username: user.username ?? null,
						profilePicture: user.profilePicture ?? null,
					});
				}
			}

			// Step 3: Join memberships with actors
			const nodes: AppUserNode[] = memberships.map((m) => ({
				id: m.id ?? '',
				actorId: m.actorId ?? '',
				isAdmin: m.isAdmin ?? false,
				isOwner: m.isOwner ?? false,
				isActive: m.isActive ?? false,
				isApproved: m.isApproved ?? false,
				isBanned: m.isBanned ?? false,
				isDisabled: m.isDisabled ?? false,
				isVerified: m.isVerified ?? false,
				permissions: m.permissions ?? null,
				granted: m.granted ?? null,
				actor: m.actorId ? actorMap.get(m.actorId) ?? null : null,
			}));

			return {
				appMemberships: { nodes, totalCount, pageInfo },
			};
		},
		enabled: enabled && isAuthenticated,
		staleTime: 2 * 60 * 1000, // 2 minutes
		refetchOnMount: true,
	});

	const users = data?.appMemberships?.nodes || [];
	const totalCount = data?.appMemberships?.totalCount || 0;
	const pageInfo = data?.appMemberships?.pageInfo || {
		hasNextPage: false,
		hasPreviousPage: false,
	};

	return {
		users,
		totalCount,
		isLoading,
		error,
		pageInfo,
		refetch,
	};
}

export interface UpdateAppUserData {
	id: string;
	patch: {
		isAdmin?: boolean;
		isActive?: boolean;
		isBanned?: boolean;
		isDisabled?: boolean;
	};
}

/**
 * Hook for updating an app user's membership
 *
 * @example
 * ```tsx
 * const { updateUser, isUpdating } = useUpdateAppUser();
 *
 * await updateUser({
 *   id: 'membership-id',
 *   patch: { isAdmin: true }
 * });
 * ```
 */
export function useUpdateAppUser(context: SchemaContext = 'schema-builder') {
	void context; // Context handled by SDK execute-adapter
	const queryClient = useQueryClient();
	const updateMutation = useUpdateAppMembershipMutation({ selection: { fields: { id: true } } });

	return {
		updateUser: async (data: UpdateAppUserData) => {
			const result = await updateMutation.mutateAsync({
				id: data.id, appMembershipPatch: data.patch,
			});
			// Invalidate app users cache
			queryClient.invalidateQueries({ queryKey: appUsersQueryKeys.all });
			return result.updateAppMembership?.appMembership ?? null;
		},
		isUpdating: updateMutation.isPending,
		error: updateMutation.error,
	};
}

/**
 * Generate query keys for consistent cache management
 */
export const appUsersQueryKeys = {
	all: ['app-users'] as const,
	byContext: (context: SchemaContext) => [...appUsersQueryKeys.all, { context }] as const,
	list: (
		context: SchemaContext,
		params: { first?: number; offset?: number; filter?: unknown; orderBy?: string[] },
	) => [...appUsersQueryKeys.byContext(context), params] as const,
};
