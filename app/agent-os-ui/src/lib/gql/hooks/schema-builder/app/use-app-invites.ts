/**
 * Hook for fetching app invites
 * Tier 4 wrapper: Uses SDK hooks + composition for sender data
 */
import { useQuery, useQueryClient } from '@tanstack/react-query';

import { useAppStore } from '@/store/app-store';
import type { SchemaContext } from '@/app-config';
import {
	fetchClaimedInvitesQuery,
	fetchInvitesQuery,
	useCreateInviteMutation,
	useDeleteInviteMutation,
	useUpdateInviteMutation,
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

export type AppInviteRole = InviteRole;
export type AppInviteStatus = InviteStatus;
export type AppInvite = BaseInvite;
export type AppClaimedInvite = BaseClaimedInvite;

interface UserNode {
	id: string;
	displayName: string | null;
	username: string | null;
}

export const appInvitesQueryKeys = {
	all: ['app-invites'] as const,
	byContext: (context: SchemaContext) => [...appInvitesQueryKeys.all, { context }] as const,
	active: (context: SchemaContext, params?: { first?: number; offset?: number }) =>
		params
			? ([...appInvitesQueryKeys.byContext(context), 'active', params] as const)
			: ([...appInvitesQueryKeys.byContext(context), 'active'] as const),
	claimed: (context: SchemaContext, params?: { first?: number; offset?: number }) =>
		params
			? ([...appInvitesQueryKeys.byContext(context), 'claimed', params] as const)
			: ([...appInvitesQueryKeys.byContext(context), 'claimed'] as const),
};

export interface UseAppInvitesOptions {
	enabled?: boolean;
	first?: number;
	offset?: number;
	context?: SchemaContext;
}

interface AppInvitesQueryResult {
	invites: InviteNode[];
	totalCount: number;
	pageInfo: { hasNextPage: boolean; hasPreviousPage: boolean };
}

export function useAppInvites(options: UseAppInvitesOptions = {}) {
	const { enabled = true, first = 20, offset = 0, context = 'schema-builder' } = options;
	void context; // Context handled by SDK execute-adapter

	const isAuthenticated = useAppStore((state) => state.auth.isAuthenticated);

	const { data, isLoading, error, refetch } = useQuery<AppInvitesQueryResult>({
		queryKey: appInvitesQueryKeys.active(context, { first, offset }),
		queryFn: async (): Promise<AppInvitesQueryResult> => {
			// Step 1: Fetch app invites
			const invitesResult = await fetchInvitesQuery({
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
					first,
					offset,
					orderBy: ['CREATED_AT_DESC'],
				},
			});

			const rawInvites = invitesResult.invites?.nodes ?? [];
			const totalCount = invitesResult.invites?.totalCount ?? 0;
			const pageInfo = invitesResult.invites?.pageInfo ?? {
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
				sender: i.senderId ? (senderMap.get(i.senderId) ?? null) : null,
			}));

			return { invites, totalCount, pageInfo };
		},
		enabled: enabled && isAuthenticated,
		staleTime: 30 * 1000,
		refetchOnMount: true,
	});

	const invites = (data?.invites ?? []).map((node) => transformActiveInvite(node));
	const totalCount = data?.totalCount ?? 0;
	const pageInfo = data?.pageInfo ?? { hasNextPage: false, hasPreviousPage: false };

	return { invites, totalCount, pageInfo, isLoading, error, refetch };
}

interface AppClaimedInvitesQueryResult {
	claimedInvites: ClaimedInviteNode[];
	totalCount: number;
	pageInfo: { hasNextPage: boolean; hasPreviousPage: boolean };
}

export function useAppClaimedInvites(options: UseAppInvitesOptions = {}) {
	const { enabled = true, first = 20, offset = 0, context = 'schema-builder' } = options;
	void context; // Context handled by SDK execute-adapter

	const isAuthenticated = useAppStore((state) => state.auth.isAuthenticated);

	const { data, isLoading, error, refetch } = useQuery<AppClaimedInvitesQueryResult>({
		queryKey: appInvitesQueryKeys.claimed(context, { first, offset }),
		queryFn: async (): Promise<AppClaimedInvitesQueryResult> => {
			// Step 1: Fetch app claimed invites
			const claimedResult = await fetchClaimedInvitesQuery({
				selection: {
					fields: {
						id: true,
						data: true,
						senderId: true,
						receiverId: true,
						createdAt: true,
					},
					first,
					offset,
					orderBy: ['CREATED_AT_DESC'],
				},
			});

			const rawClaimed = claimedResult.claimedInvites?.nodes ?? [];
			const totalCount = claimedResult.claimedInvites?.totalCount ?? 0;
			const pageInfo = claimedResult.claimedInvites?.pageInfo ?? {
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
				sender: c.senderId ? (userMap.get(c.senderId) ?? null) : null,
				receiver: c.receiverId ? (userMap.get(c.receiverId) ?? null) : null,
			}));

			return { claimedInvites, totalCount, pageInfo };
		},
		enabled: enabled && isAuthenticated,
		staleTime: 30 * 1000,
		refetchOnMount: true,
	});

	const claimedInvites = (data?.claimedInvites ?? []).map((node) => transformClaimedInvite(node));
	const totalCount = data?.totalCount ?? 0;
	const pageInfo = data?.pageInfo ?? { hasNextPage: false, hasPreviousPage: false };

	return { claimedInvites, totalCount, pageInfo, isLoading, error, refetch };
}

export interface SendAppInviteInput {
	email: string;
	role: AppInviteRole;
	expiresAt: string;
	message?: string;
	context?: SchemaContext;
}

export function useSendAppInvite(defaultContext: SchemaContext = 'schema-builder') {
	void defaultContext; // Context handled by SDK execute-adapter
	const queryClient = useQueryClient();
	const createMutation = useCreateInviteMutation({ selection: { fields: { id: true } } });

	return {
		sendInvite: async (input: SendAppInviteInput) => {
			const ctx = input.context ?? defaultContext;
			const senderId = useAppStore.getState().auth.user?.id || useAppStore.getState().auth.token?.userId;
			if (!senderId) throw new Error('No authenticated user found');
			const result = await createMutation.mutateAsync({
				senderId,
				email: input.email,
				expiresAt: input.expiresAt,
				// TODO: fix permission denied for table invites
				// data: {
				// 	email: input.email,
				// 	role: input.role,
				// 	message: input.message || null,
				// },
			});
			queryClient.invalidateQueries({ queryKey: appInvitesQueryKeys.byContext(ctx) });
			return result.createInvite?.invite ?? null;
		},
		isSending: createMutation.isPending,
		error: createMutation.error,
		reset: createMutation.reset,
	};
}

export interface CancelAppInviteInput {
	inviteId: string;
	context?: SchemaContext;
}

export function useCancelAppInvite(defaultContext: SchemaContext = 'schema-builder') {
	void defaultContext; // Context handled by SDK execute-adapter
	const queryClient = useQueryClient();
	const deleteMutation = useDeleteInviteMutation({ selection: { fields: { id: true } } });

	return {
		cancelInvite: async (input: CancelAppInviteInput) => {
			const ctx = input.context ?? defaultContext;
			await deleteMutation.mutateAsync({ id: input.inviteId });
			queryClient.invalidateQueries({ queryKey: appInvitesQueryKeys.byContext(ctx) });
			return input.inviteId;
		},
		isCancelling: deleteMutation.isPending,
		error: deleteMutation.error,
		reset: deleteMutation.reset,
	};
}

export interface ExtendAppInviteInput {
	inviteId: string;
	expiresAt: string;
	context?: SchemaContext;
}

export function useExtendAppInvite(defaultContext: SchemaContext = 'schema-builder') {
	void defaultContext; // Context handled by SDK execute-adapter
	const queryClient = useQueryClient();
	const updateMutation = useUpdateInviteMutation({ selection: { fields: { id: true } } });

	return {
		extendInvite: async (input: ExtendAppInviteInput) => {
			const ctx = input.context ?? defaultContext;
			const result = await updateMutation.mutateAsync({
				id: input.inviteId,
				invitePatch: {
					expiresAt: input.expiresAt,
				},
			});
			queryClient.invalidateQueries({ queryKey: appInvitesQueryKeys.byContext(ctx) });
			return result.updateInvite?.invite ?? null;
		},
		isExtending: updateMutation.isPending,
		error: updateMutation.error,
		reset: updateMutation.reset,
	};
}
