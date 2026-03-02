/**
 * Hook for fetching organizations the current user belongs to
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 *
 * Returns organizations with the user's role (owner/admin/member) for each.
 * Organizations are Users with type=1 in the database.
 */
import { useQuery } from '@tanstack/react-query';

import type { SchemaContext } from '@/app-config';
import { fetchOrgMembershipsQuery, fetchUsersQuery } from '@sdk/api';
import { useAppStore } from '@/store/app-store';

import {
	type OrganizationWithRole,
	ROLE_TYPE,
	deriveOrgRole,
} from './organization.types';

// TODO: Backend migration removed organizationSettingByOrganizationId from User
// Settings field needs backend consultation for proper replacement

interface EntityNode {
	id: string;
	displayName: string | null;
	username: string | null;
	profilePicture: unknown | null;
	type: number;
	memberCount: number;
}

interface MembershipNode {
	id: string;
	isOwner: boolean;
	isAdmin: boolean;
	isActive: boolean;
	isApproved: boolean;
	entity: EntityNode | null;
}

interface QueryResult {
	memberships: MembershipNode[];
	totalCount: number;
	pageInfo: {
		hasNextPage: boolean;
		hasPreviousPage: boolean;
	};
}

export interface UseOrganizationsOptions {
	/** Enable/disable the query */
	enabled?: boolean;
	/** Number of organizations to fetch */
	first?: number;
	/** Offset for pagination */
	offset?: number;
	/** Override schema context (defaults to schema-builder) */
	context?: SchemaContext;
}

export interface UseOrganizationsResult {
	/** List of organizations with current user's role */
	organizations: OrganizationWithRole[];
	/** Total count of organizations the user belongs to */
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
 * Transform raw membership data into OrganizationWithRole
 * @param membership - The membership node
 * @param actorId - The current user's ID to detect self-org
 */
function transformMembershipToOrg(membership: MembershipNode, actorId: string): OrganizationWithRole | null {
	const entity = membership.entity;
	if (!entity) return null;

	// Self-org: entity_id === actor_id (type=1, User)
	const isSelfOrg = entity.id === actorId && entity.type === ROLE_TYPE.USER;

	// Include: self-org (type=1) OR organization (type=2)
	if (!isSelfOrg && entity.type !== ROLE_TYPE.ORGANIZATION) {
		return null;
	}

	// TODO: organizationSettingByOrganizationId removed from schema
	// Settings field needs backend consultation for proper replacement

	return {
		id: entity.id,
		displayName: entity.displayName ?? null,
		username: entity.username ?? null,
		profilePicture: entity.profilePicture ?? null,
		settings: null, // TODO: OrganizationSetting removed
		memberCount: entity.memberCount,
		role: deriveOrgRole(membership),
		membershipId: membership.id,
		memberSince: null, // Membership doesn't have createdAt in schema
		isSelfOrg,
	};
}

/**
 * Hook for fetching organizations the current user belongs to
 *
 * @example
 * ```tsx
 * const { organizations, isLoading } = useOrganizations();
 *
 * organizations.map(org => (
 *   <OrgCard
 *     key={org.id}
 *     name={org.displayName}
 *     role={org.role}
 *     memberCount={org.memberCount}
 *   />
 * ));
 * ```
 */
export function useOrganizations(options: UseOrganizationsOptions = {}): UseOrganizationsResult {
	const { enabled = true, first = 50, offset = 0, context = 'schema-builder' } = options;

	const { user, token, isAuthLoading } = useAppStore((state) => ({
		user: state.auth.user,
		token: state.auth.token,
		isAuthLoading: state.auth.isLoading,
	}));

	const actorId = user?.id || token?.userId;

	// Auth is ready when we have a user/token to query with
	const isAuthReady = !!actorId;

	const { data, isLoading: isQueryLoading, error, refetch } = useQuery<QueryResult>({
		queryKey: organizationsQueryKeys.list(context, actorId || '', { first, offset }),
		queryFn: async () => {
			if (!actorId) {
				throw new Error('No authenticated user found');
			}

			// Step 1: Fetch memberships for current user
			const membershipsResult = await fetchOrgMembershipsQuery({
				selection: {
					fields: {
						id: true,
						isOwner: true,
						isAdmin: true,
						isActive: true,
						isApproved: true,
						actorId: true,
						entityId: true,
					},
					where: { actorId: { equalTo: actorId }, isActive: { equalTo: true } },
					first,
					offset,
				},
			});

			const rawMemberships = membershipsResult.orgMemberships?.nodes ?? [];
			const totalCount = membershipsResult.orgMemberships?.totalCount ?? 0;
			const pageInfo = membershipsResult.orgMemberships?.pageInfo ?? {
				hasNextPage: false,
				hasPreviousPage: false,
			};

			if (rawMemberships.length === 0) {
				return { memberships: [], totalCount: 0, pageInfo: { hasNextPage: false, hasPreviousPage: false } };
			}

			// Step 2: Get unique entity IDs and fetch user data
			const entityIds = [...new Set(rawMemberships.map((m) => m.entityId).filter((id): id is string => !!id))];
			const usersResult = await fetchUsersQuery({
				selection: {
					fields: {
						id: true,
						displayName: true,
						username: true,
						profilePicture: true,
						type: true,
					},
					where: { id: { in: entityIds } },
				},
			});

			// Build entity map
			const entityMap = new Map<string, { id: string; displayName: string | null; username: string | null; profilePicture: unknown | null; type: number }>();
			for (const user of usersResult.users?.nodes ?? []) {
				if (user.id) {
					entityMap.set(user.id, {
						id: user.id,
						displayName: user.displayName ?? null,
						username: user.username ?? null,
						profilePicture: user.profilePicture ?? null,
						type: user.type ?? 0,
					});
				}
			}

			// Step 3: Fetch member counts for each entity (batch query)
			const memberCountMap = new Map<string, number>();
			if (entityIds.length > 0) {
				const countsResult = await fetchOrgMembershipsQuery({
					selection: {
						fields: { id: true, entityId: true },
						where: { entityId: { in: entityIds } },
					},
				});
				// Count memberships per entity
				for (const m of countsResult.orgMemberships?.nodes ?? []) {
					if (m.entityId) {
						memberCountMap.set(m.entityId, (memberCountMap.get(m.entityId) ?? 0) + 1);
					}
				}
			}

			// Step 4: Build membership nodes with entities
			const memberships: MembershipNode[] = rawMemberships.map((m) => {
				const entity = m.entityId ? entityMap.get(m.entityId) : null;
				return {
					id: m.id ?? '',
					isOwner: m.isOwner ?? false,
					isAdmin: m.isAdmin ?? false,
					isActive: m.isActive ?? false,
					isApproved: m.isApproved ?? false,
					entity: entity ? {
						...entity,
						memberCount: memberCountMap.get(entity.id) ?? 0,
					} : null,
				};
			});

			return { memberships, totalCount, pageInfo };
		},
		enabled: enabled && isAuthReady,
		staleTime: 2 * 60 * 1000, // 2 minutes
		refetchOnMount: true,
	});

	// Transform and filter memberships to organizations (including self-org)
	const organizations: OrganizationWithRole[] = (data?.memberships ?? [])
		.map((m) => transformMembershipToOrg(m, actorId!))
		.filter((org): org is OrganizationWithRole => org !== null);

	// Note: totalCount from API includes all memberships (not just orgs)
	// We report the filtered count for accuracy
	const totalCount = organizations.length;

	const pageInfo = data?.pageInfo ?? {
		hasNextPage: false,
		hasPreviousPage: false,
	};

	// Loading state logic:
	// - If auth is still initializing (isAuthLoading=true), report loading
	// - If auth is done but user NOT authenticated (!isAuthReady), report NOT loading
	//   (this allows route guards to properly redirect)
	// - If auth is done and user authenticated, check query loading state
	const isLoading = isAuthLoading || (isAuthReady && isQueryLoading);

	return {
		organizations,
		totalCount,
		isLoading,
		error,
		pageInfo,
		refetch,
	};
}

/**
 * Query keys for organizations cache management
 */
export const organizationsQueryKeys = {
	all: ['organizations'] as const,
	byContext: (context: SchemaContext) => [...organizationsQueryKeys.all, { context }] as const,
	list: (context: SchemaContext, actorId: string, params: { first?: number; offset?: number }) =>
		[...organizationsQueryKeys.byContext(context), 'list', { actorId, ...params }] as const,
	detail: (context: SchemaContext, orgId: string) =>
		[...organizationsQueryKeys.byContext(context), 'detail', { orgId }] as const,
	members: (context: SchemaContext, orgId: string, params?: { first?: number; offset?: number }) =>
		params
			? ([...organizationsQueryKeys.byContext(context), 'members', { orgId }, params] as const)
			: ([...organizationsQueryKeys.byContext(context), 'members', { orgId }] as const),
};
