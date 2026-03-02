/**
 * Hook for fetching organization invites
 * Tier 4 wrapper: Uses SDK hooks + composition for sender data
 */
import { useQuery } from '@tanstack/react-query';

import { useAppStore } from '@/store/app-store';
import type { SchemaContext } from '@/app-config';
import {
	fetchOrgClaimedInvitesQuery,
	fetchOrgInvitesQuery,
	fetchUsersQuery,
} from '@sdk/api';

import {
	transformActiveInvite,
	transformClaimedInvite,
	type BaseClaimedInvite,
	type BaseInvite,
	type ClaimedInviteNode,
	type InviteNode,
	type InviteRole,
	type InviteStatus,
} from '../invites-shared-utils';

export type OrgInviteRole = InviteRole;
export type OrgInviteStatus = InviteStatus;
export type OrgInvite = BaseInvite;
export type OrgClaimedInvite = BaseClaimedInvite;

interface UserNode {
	id: string;
	displayName: string | null;
	username: string | null;
}

export const orgInvitesQueryKeys = {
	all: ['org-invites'] as const,
	byContext: (context: SchemaContext) => [...orgInvitesQueryKeys.all, { context }] as const,
	active: (context: SchemaContext, orgId: string, params?: { first?: number; offset?: number }) =>
		params
			? ([...orgInvitesQueryKeys.byContext(context), 'active', { orgId }, params] as const)
			: ([...orgInvitesQueryKeys.byContext(context), 'active', { orgId }] as const),
	claimed: (context: SchemaContext, orgId: string, params?: { first?: number; offset?: number }) =>
		params
			? ([...orgInvitesQueryKeys.byContext(context), 'claimed', { orgId }, params] as const)
			: ([...orgInvitesQueryKeys.byContext(context), 'claimed', { orgId }] as const),
};

export interface UseOrgInvitesOptions {
	orgId: string;
	enabled?: boolean;
	first?: number;
	offset?: number;
	context?: SchemaContext;
}

interface OrgInvitesQueryResult {
	invites: InviteNode[];
	totalCount: number;
	pageInfo: { hasNextPage: boolean; hasPreviousPage: boolean };
}

export function useOrgInvites(options: UseOrgInvitesOptions) {
	const { orgId, enabled = true, first = 20, offset = 0, context = 'schema-builder' } = options;
	void context; // Context handled by SDK execute-adapter

	const isAuthenticated = useAppStore((state) => state.auth.isAuthenticated);

	const { data, isLoading, error, refetch } = useQuery<OrgInvitesQueryResult>({
		queryKey: orgInvitesQueryKeys.active(context, orgId, { first, offset }),
		queryFn: async (): Promise<OrgInvitesQueryResult> => {
			// Step 1: Fetch org invites
			const invitesResult = await fetchOrgInvitesQuery({
				selection: {
					fields: {
						id: true,
						email: true,
						data: true,
						createdAt: true,
						expiresAt: true,
						inviteValid: true,
						inviteToken: true,
						inviteCount: true,
						inviteLimit: true,
						senderId: true,
					},
					where: { entityId: { equalTo: orgId } },
					first,
					offset,
					orderBy: ['CREATED_AT_DESC'],
				},
			});

			const rawInvites = invitesResult.orgInvites?.nodes ?? [];
			const totalCount = invitesResult.orgInvites?.totalCount ?? 0;
			const pageInfo = invitesResult.orgInvites?.pageInfo ?? {
				hasNextPage: false,
				hasPreviousPage: false,
			};

			if (rawInvites.length === 0) {
				return { invites: [], totalCount: 0, pageInfo: { hasNextPage: false, hasPreviousPage: false } };
			}

			// Step 2: Fetch senders (users) for all invites
			const senderIds = [...new Set(rawInvites.map((i) => i.senderId).filter((id): id is string => !!id))];
			let senderMap = new Map<string, UserNode>();

			if (senderIds.length > 0) {
				const usersResult = await fetchUsersQuery({
					selection: {
						fields: {
							id: true,
							displayName: true,
							username: true,
						},
						where: { id: { in: senderIds } },
					},
				});
				for (const user of usersResult.users?.nodes ?? []) {
					if (user.id) {
						senderMap.set(user.id, {
							id: user.id,
							displayName: user.displayName ?? null,
							username: user.username ?? null,
						});
					}
				}
			}

			// Step 3: Build invite nodes with sender info
			const invites: InviteNode[] = rawInvites.map((i) => ({
				id: i.id ?? '',
				email: (i.email as string | null) ?? null,
				data: i.data,
				createdAt: i.createdAt ?? '',
				expiresAt: i.expiresAt ?? '',
				inviteValid: i.inviteValid ?? false,
				inviteToken: i.inviteToken ?? '',
				inviteCount: i.inviteCount ?? 0,
				inviteLimit: i.inviteLimit ?? 1,
				sender: i.senderId ? senderMap.get(i.senderId) ?? null : null,
			}));

			return { invites, totalCount, pageInfo };
		},
		enabled: enabled && isAuthenticated && !!orgId,
		staleTime: 30 * 1000,
		refetchOnMount: true,
	});

	const invites = (data?.invites ?? []).map((node) => transformActiveInvite(node));
	const totalCount = data?.totalCount ?? 0;
	const pageInfo = data?.pageInfo ?? { hasNextPage: false, hasPreviousPage: false };

	return { invites, totalCount, pageInfo, isLoading, error, refetch };
}

interface OrgClaimedInvitesQueryResult {
	claimedInvites: ClaimedInviteNode[];
	totalCount: number;
	pageInfo: { hasNextPage: boolean; hasPreviousPage: boolean };
}

export function useOrgClaimedInvites(options: UseOrgInvitesOptions) {
	const { orgId, enabled = true, first = 20, offset = 0, context = 'schema-builder' } = options;
	void context; // Context handled by SDK execute-adapter

	const isAuthenticated = useAppStore((state) => state.auth.isAuthenticated);

	const { data, isLoading, error, refetch } = useQuery<OrgClaimedInvitesQueryResult>({
		queryKey: orgInvitesQueryKeys.claimed(context, orgId, { first, offset }),
		queryFn: async (): Promise<OrgClaimedInvitesQueryResult> => {
			// Step 1: Fetch org claimed invites
			const claimedResult = await fetchOrgClaimedInvitesQuery({
				selection: {
					fields: {
						id: true,
						data: true,
						senderId: true,
						receiverId: true,
						createdAt: true,
					},
					where: { entityId: { equalTo: orgId } },
					first,
					offset,
					orderBy: ['CREATED_AT_DESC'],
				},
			});

			const rawClaimed = claimedResult.orgClaimedInvites?.nodes ?? [];
			const totalCount = claimedResult.orgClaimedInvites?.totalCount ?? 0;
			const pageInfo = claimedResult.orgClaimedInvites?.pageInfo ?? {
				hasNextPage: false,
				hasPreviousPage: false,
			};

			if (rawClaimed.length === 0) {
				return { claimedInvites: [], totalCount: 0, pageInfo: { hasNextPage: false, hasPreviousPage: false } };
			}

			// Step 2: Fetch senders and receivers (users) for all claimed invites
			const userIds = [
				...new Set([
					...rawClaimed.map((c) => c.senderId).filter((id): id is string => !!id),
					...rawClaimed.map((c) => c.receiverId).filter((id): id is string => !!id),
				]),
			];
			let userMap = new Map<string, UserNode>();

			if (userIds.length > 0) {
				const usersResult = await fetchUsersQuery({
					selection: {
						fields: {
							id: true,
							displayName: true,
							username: true,
						},
						where: { id: { in: userIds } },
					},
				});
				for (const user of usersResult.users?.nodes ?? []) {
					if (user.id) {
						userMap.set(user.id, {
							id: user.id,
							displayName: user.displayName ?? null,
							username: user.username ?? null,
						});
					}
				}
			}

			// Step 3: Build claimed invite nodes with sender/receiver info
			const claimedInvites: ClaimedInviteNode[] = rawClaimed.map((c) => ({
				id: c.id ?? '',
				createdAt: c.createdAt ?? '',
				data: c.data,
				sender: c.senderId ? userMap.get(c.senderId) ?? null : null,
				receiver: c.receiverId ? userMap.get(c.receiverId) ?? null : null,
			}));

			return { claimedInvites, totalCount, pageInfo };
		},
		enabled: enabled && isAuthenticated && !!orgId,
		staleTime: 30 * 1000,
		refetchOnMount: true,
	});

	const claimedInvites = (data?.claimedInvites ?? []).map((node) => transformClaimedInvite(node));
	const totalCount = data?.totalCount ?? 0;
	const pageInfo = data?.pageInfo ?? { hasNextPage: false, hasPreviousPage: false };

	return { claimedInvites, totalCount, pageInfo, isLoading, error, refetch };
}
