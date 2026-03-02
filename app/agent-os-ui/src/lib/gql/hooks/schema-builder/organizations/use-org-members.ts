/**
 * Hook for fetching organization members
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 */
import { useQuery } from '@tanstack/react-query';

import { useAppStore } from '@/store/app-store';
import type { SchemaContext } from '@/app-config';
import { fetchOrgMembershipsQuery, fetchUsersQuery } from '@sdk/api';

import type { OrgRole } from './organization.types';
import { deriveOrgRole } from './organization.types';
import { organizationsQueryKeys } from './use-organizations';

interface ActorNode {
	id: string;
	displayName: string | null;
	username: string | null;
	profilePicture: unknown | null;
}

interface MembershipNode {
	id: string;
	actorId: string;
	isOwner: boolean;
	isAdmin: boolean;
	isActive: boolean;
	isApproved: boolean;
	isBanned: boolean;
	isDisabled: boolean;
	actor: ActorNode | null;
}

export type OrgMemberStatus =
	| 'active'
	| 'inactive'
	| 'pending_approval'
	| 'banned'
	| 'disabled';

export interface OrgMember {
	membershipId: string;
	actorId: string;
	displayName: string | null;
	username: string | null;
	profilePicture: unknown | null;
	role: OrgRole;
	status: OrgMemberStatus;
	flags: {
		isOwner: boolean;
		isAdmin: boolean;
		isActive: boolean;
		isApproved: boolean;
		isBanned: boolean;
		isDisabled: boolean;
	};
}

function deriveMemberStatus(m: Pick<OrgMember['flags'], keyof OrgMember['flags']>): OrgMemberStatus {
	if (m.isBanned) return 'banned';
	if (m.isDisabled) return 'disabled';
	if (!m.isApproved) return 'pending_approval';
	return m.isActive ? 'active' : 'inactive';
}

function transformMember(node: MembershipNode): OrgMember {
	const flags = {
		isOwner: node.isOwner,
		isAdmin: node.isAdmin,
		isActive: node.isActive,
		isApproved: node.isApproved,
		isBanned: node.isBanned,
		isDisabled: node.isDisabled,
	};

	return {
		membershipId: node.id,
		actorId: node.actorId,
		displayName: node.actor?.displayName ?? null,
		username: node.actor?.username ?? null,
		profilePicture: node.actor?.profilePicture ?? null,
		role: deriveOrgRole(node),
		status: deriveMemberStatus(flags),
		flags,
	};
}

export interface UseOrgMembersOptions {
	orgId: string;
	enabled?: boolean;
	first?: number;
	offset?: number;
	context?: SchemaContext;
}

export interface UseOrgMembersResult {
	members: OrgMember[];
	totalCount: number;
	isLoading: boolean;
	error: Error | null;
	pageInfo: { hasNextPage: boolean; hasPreviousPage: boolean };
	refetch: () => Promise<unknown>;
}

interface QueryResult {
	members: OrgMember[];
	totalCount: number;
	pageInfo: { hasNextPage: boolean; hasPreviousPage: boolean };
}

export function useOrgMembers(options: UseOrgMembersOptions): UseOrgMembersResult {
	const { orgId, enabled = true, first = 20, offset = 0, context = 'schema-builder' } = options;
	void context; // Context handled by SDK execute-adapter

	const isAuthenticated = useAppStore((state) => state.auth.isAuthenticated);

	const { data, isLoading, error, refetch } = useQuery<QueryResult>({
		queryKey: organizationsQueryKeys.members(context, orgId, { first, offset }),
		queryFn: async () => {
			// Step 1: Fetch org memberships
			const membershipsResult = await fetchOrgMembershipsQuery({
				selection: {
					fields: {
						id: true,
						actorId: true,
						isOwner: true,
						isAdmin: true,
						isActive: true,
						isApproved: true,
						isBanned: true,
						isDisabled: true,
					},
					where: { entityId: { equalTo: orgId } },
					first,
					offset,
					orderBy: ['IS_OWNER_DESC', 'IS_ADMIN_DESC'],
				},
			});

			const memberships = membershipsResult.orgMemberships?.nodes ?? [];
			const totalCount = membershipsResult.orgMemberships?.totalCount ?? 0;
			const pageInfo = membershipsResult.orgMemberships?.pageInfo ?? {
				hasNextPage: false,
				hasPreviousPage: false,
			};

			if (memberships.length === 0) {
				return { members: [], totalCount: 0, pageInfo: { hasNextPage: false, hasPreviousPage: false } };
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

			// Step 3: Transform memberships with actors
			const members = memberships.map((m): OrgMember => {
				const membershipNode: MembershipNode = {
					id: m.id ?? '',
					actorId: m.actorId ?? '',
					isOwner: m.isOwner ?? false,
					isAdmin: m.isAdmin ?? false,
					isActive: m.isActive ?? false,
					isApproved: m.isApproved ?? false,
					isBanned: m.isBanned ?? false,
					isDisabled: m.isDisabled ?? false,
					actor: m.actorId ? actorMap.get(m.actorId) ?? null : null,
				};
				return transformMember(membershipNode);
			});

			return { members, totalCount, pageInfo };
		},
		enabled: enabled && isAuthenticated && !!orgId,
		staleTime: 30 * 1000,
		refetchOnMount: true,
	});

	return {
		members: data?.members ?? [],
		totalCount: data?.totalCount ?? 0,
		isLoading,
		error,
		pageInfo: data?.pageInfo ?? { hasNextPage: false, hasPreviousPage: false },
		refetch,
	};
}
