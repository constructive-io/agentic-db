/**
 * Hook for fetching a single organization's details
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 *
 * Returns full organization data including settings and member preview.
 */
import { useQuery } from '@tanstack/react-query';

import type { SchemaContext } from '@/app-config';
import {
	fetchUserQuery,
	fetchUsersQuery,
	fetchOrgMembershipsQuery,
} from '@sdk/api';
import { useAppStore } from '@/store/app-store';

import {
	type Organization,
	type OrgRole,
	ROLE_TYPE,
	deriveOrgRole,
} from './organization.types';
import { organizationsQueryKeys } from './use-organizations';

// TODO: Backend migration removed organizationSettingByOrganizationId from User
// Settings field needs backend consultation for proper replacement

interface ActorNode {
	id: string;
	displayName: string | null;
	username: string | null;
	profilePicture: unknown | null;
}

interface MemberNode {
	id: string;
	actorId: string;
	isOwner: boolean;
	isAdmin: boolean;
	isActive: boolean;
	actor: ActorNode | null;
}

interface UserNode {
	id: string;
	displayName: string | null;
	username: string | null;
	profilePicture: unknown | null;
	type: number;
	membersPreview: MemberNode[];
	memberCount: number;
}

interface CurrentMembershipNode {
	id: string;
	isOwner: boolean;
	isAdmin: boolean;
	isActive: boolean;
}

interface QueryResult {
	user: UserNode | null;
	currentUserMembership: CurrentMembershipNode | null;
}

/**
 * Member preview for organization detail view
 */
export interface OrganizationMember {
	id: string;
	membershipId: string;
	displayName: string | null;
	username: string | null;
	profilePicture: unknown | null;
	role: OrgRole;
	memberSince: string | null;
}

/**
 * Full organization detail with members preview
 */
export interface OrganizationDetail extends Organization {
	/** Current user's role in this organization */
	currentUserRole: OrgRole | null;
	/** Current user's membership ID (null if not a member) */
	currentUserMembershipId: string | null;
	/** Preview of organization members (owners/admins first) */
	membersPreview: OrganizationMember[];
}

export interface UseOrganizationOptions {
	/** Organization ID to fetch */
	orgId: string;
	/** Enable/disable the query */
	enabled?: boolean;
	/** Override schema context (defaults to schema-builder) */
	context?: SchemaContext;
}

export interface UseOrganizationResult {
	/** Organization details (null if not found or not a member) */
	organization: OrganizationDetail | null;
	/** Loading state */
	isLoading: boolean;
	/** Error state */
	error: Error | null;
	/** Whether the current user is a member of this org */
	isMember: boolean;
	/** Whether the current user can edit this org (owner or admin) */
	canEdit: boolean;
	/** Whether the current user can delete this org (owner only) */
	canDelete: boolean;
	/** Refetch function */
	refetch: () => Promise<unknown>;
}

/**
 * Transform member node to OrganizationMember
 */
function transformMember(member: MemberNode): OrganizationMember {
	return {
		id: member.actor?.id ?? '',
		membershipId: member.id,
		displayName: member.actor?.displayName ?? null,
		username: member.actor?.username ?? null,
		profilePicture: member.actor?.profilePicture ?? null,
		role: deriveOrgRole(member),
		memberSince: null, // Membership doesn't have createdAt in schema
	};
}

/**
 * Hook for fetching a single organization's details
 *
 * @example
 * ```tsx
 * const { organization, canEdit, isLoading } = useOrganization({ orgId });
 *
 * if (organization) {
 *   return (
 *     <div>
 *       <h1>{organization.displayName}</h1>
 *       <p>Your role: {organization.currentUserRole}</p>
 *       {canEdit && <EditButton />}
 *     </div>
 *   );
 * }
 * ```
 */
export function useOrganization(options: UseOrganizationOptions): UseOrganizationResult {
	const { orgId, enabled = true, context = 'schema-builder' } = options;

	const { user, token } = useAppStore((state) => ({
		user: state.auth.user,
		token: state.auth.token,
	}));

	const actorId = user?.id || token?.userId;

	const { data, isLoading, error, refetch } = useQuery<QueryResult>({
		queryKey: organizationsQueryKeys.detail(context, orgId),
		queryFn: async (): Promise<QueryResult> => {
			if (!actorId) {
				throw new Error('No authenticated user found');
			}

			// Step 1: Fetch the organization (user entity) by ID
			const userResult = await fetchUserQuery({
				id: orgId,
				selection: {
					fields: {
						id: true,
						displayName: true,
						username: true,
						profilePicture: true,
						type: true,
					},
				},
			});
			const userData = userResult.user;

			if (!userData) {
				return { user: null, currentUserMembership: null };
			}

			// Step 2: Fetch current user's membership in this org
			const currentMembershipResult = await fetchOrgMembershipsQuery({
				selection: {
					fields: {
						id: true,
						isOwner: true,
						isAdmin: true,
						isActive: true,
						actorId: true,
						entityId: true,
					},
					where: { entityId: { equalTo: orgId }, actorId: { equalTo: actorId } },
					first: 1,
				},
			});
			const currentUserMembership = currentMembershipResult.orgMemberships?.nodes?.[0] ?? null;

			// Step 3: Fetch member preview (owners/admins first)
			const membersResult = await fetchOrgMembershipsQuery({
				selection: {
					fields: {
						id: true,
						isOwner: true,
						isAdmin: true,
						isActive: true,
						actorId: true,
						entityId: true,
					},
					where: { entityId: { equalTo: orgId } },
					first: 5,
					orderBy: ['IS_OWNER_DESC', 'IS_ADMIN_DESC'],
				},
			});
			const memberships = membersResult.orgMemberships?.nodes ?? [];
			const memberCount = membersResult.orgMemberships?.totalCount ?? 0;

			// Step 4: Fetch actors for member preview
			const actorIds = [...new Set(memberships.map((m) => m.actorId).filter((id): id is string => !!id))];
			let actorMap = new Map<string, ActorNode>();

			if (actorIds.length > 0) {
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
			}

			// Build user node with members preview
			const userNode: UserNode = {
				id: userData.id ?? '',
				displayName: userData.displayName ?? null,
				username: userData.username ?? null,
				profilePicture: userData.profilePicture ?? null,
				type: userData.type ?? 0,
				membersPreview: memberships.map((m) => ({
					id: m.id ?? '',
					actorId: m.actorId ?? '',
					isOwner: m.isOwner ?? false,
					isAdmin: m.isAdmin ?? false,
					isActive: m.isActive ?? false,
					actor: m.actorId ? actorMap.get(m.actorId) ?? null : null,
				})),
				memberCount,
			};

			// Build current membership node
			const currentMembershipNode: CurrentMembershipNode | null = currentUserMembership
				? {
						id: currentUserMembership.id ?? '',
						isOwner: currentUserMembership.isOwner ?? false,
						isAdmin: currentUserMembership.isAdmin ?? false,
						isActive: currentUserMembership.isActive ?? false,
					}
				: null;

			return { user: userNode, currentUserMembership: currentMembershipNode };
		},
		enabled: enabled && !!actorId && !!orgId,
		staleTime: 2 * 60 * 1000,
		refetchOnMount: true,
	});

	// Process organization data
	const userData = data?.user;
	const currentUserMembership = data?.currentUserMembership;

	// Validate this is an organization
	const isOrganization = userData?.type === ROLE_TYPE.ORGANIZATION;

	let organization: OrganizationDetail | null = null;

	if (userData && isOrganization) {
		// TODO: organizationSettingByOrganizationId removed from schema
		// Settings field needs backend consultation for proper replacement

		organization = {
			id: userData.id,
			displayName: userData.displayName ?? null,
			username: userData.username ?? null,
			profilePicture: userData.profilePicture ?? null,
			settings: null, // TODO: OrganizationSetting removed
			memberCount: userData.memberCount,
			currentUserRole: currentUserMembership ? deriveOrgRole(currentUserMembership) : null,
			currentUserMembershipId: currentUserMembership?.id ?? null,
			membersPreview: userData.membersPreview.map(transformMember),
		};
	}

	const isMember = !!currentUserMembership;
	const currentRole = currentUserMembership ? deriveOrgRole(currentUserMembership) : null;
	const canEdit = currentRole === 'owner' || currentRole === 'admin';
	const canDelete = currentRole === 'owner';

	return {
		organization,
		isLoading,
		error,
		isMember,
		canEdit,
		canDelete,
		refetch,
	};
}
