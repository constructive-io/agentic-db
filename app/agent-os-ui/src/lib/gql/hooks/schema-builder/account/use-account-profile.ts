/**
 * Hooks for managing user account profiles
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 */
import { useQueryClient } from '@tanstack/react-query';

import type { SchemaContext } from '@/app-config';
import {
	userQueryKey,
	useUpdateUserMutation,
	useUserQuery,
} from '@sdk/api';
import { useAppStore } from '@/store/app-store';

// TODO: Backend migration removed userProfile and emailsByOwnerId from User type
// These fields need backend consultation for proper replacement

export interface AccountEmail {
	id: string;
	email: string;
	isPrimary: boolean;
	isVerified: boolean;
}

export interface AccountProfile {
	id: string;
	displayName: string | null;
	username: string | null;
	profilePicture: unknown | null;
	bio: string | null;
	userProfileId: string | null;
	emails: AccountEmail[];
	primaryEmail: AccountEmail | null;
}

/** @deprecated Use userQueryKey from SDK instead */
export const accountProfileQueryKeys = {
	all: ['account-profile'] as const,
	byContext: (context: SchemaContext) => [...accountProfileQueryKeys.all, { context }] as const,
	detail: (context: SchemaContext, userId: string) =>
		[...accountProfileQueryKeys.byContext(context), { userId }] as const,
};

export interface UseAccountProfileOptions {
	userId: string;
	enabled?: boolean;
	context?: SchemaContext;
}

export interface UseAccountProfileResult {
	profile: AccountProfile | null;
	isLoading: boolean;
	error: Error | null;
	refetch: () => Promise<unknown>;
}

export function useAccountProfile(options: UseAccountProfileOptions): UseAccountProfileResult {
	const { userId, enabled = true, context = 'schema-builder' } = options;

	const isAuthenticated = useAppStore((state) => state.auth.isAuthenticated);

	const { data, isLoading, error, refetch } = useUserQuery({
		id: userId,
		selection: {
			fields: {
				id: true,
				displayName: true,
				username: true,
				profilePicture: true,
			},
		},
		enabled: enabled && isAuthenticated && !!userId,
		staleTime: 30 * 1000,
		refetchOnMount: true,
	});

	const user = data?.user;
	const profile: AccountProfile | null = user?.id
		? {
				id: user.id,
				displayName: user.displayName ?? null,
				username: user.username ?? null,
				profilePicture: user.profilePicture ?? null,
				bio: null, // TODO: userProfile.bio removed
				userProfileId: null, // TODO: userProfile.id removed
				emails: [], // TODO: emailsByOwnerId removed
				primaryEmail: null,
			}
		: null;

	return { profile, isLoading, error: error ?? null, refetch };
}

export interface UpdateUserInput {
	userId: string;
	patch: {
		displayName?: string;
		username?: string;
		profilePicture?: string;
	};
	context?: SchemaContext;
}

export function useUpdateUser(_defaultContext: SchemaContext = 'schema-builder') {
	const queryClient = useQueryClient();
	const updateMutation = useUpdateUserMutation({ selection: { fields: { id: true } } });

	return {
		updateUser: async (input: UpdateUserInput) => {
			const result = await updateMutation.mutateAsync({
				id: input.userId, userPatch: input.patch,
			});
			// Invalidate cache
			queryClient.invalidateQueries({
				queryKey: userQueryKey(input.userId),
			});
			return result.updateUser?.user ?? null;
		},
		isUpdating: updateMutation.isPending,
		error: updateMutation.error,
		reset: updateMutation.reset,
	};
}

export interface UpdateUserProfileInput {
	userId: string;
	userProfileId: string | null;
	patch: {
		bio?: string;
	};
	context?: SchemaContext;
}

// TODO: useUpdateUserProfile removed - UserProfile mutations no longer exist
// This needs backend consultation for proper replacement
export function useUpdateUserProfile(_defaultContext: SchemaContext = 'schema-builder') {
	// Stub implementation until backend provides replacement
	return {
		updateUserProfile: async (_input: UpdateUserProfileInput) => {
			console.warn('useUpdateUserProfile: UserProfile mutations removed from schema');
			return null;
		},
		isUpdating: false,
		error: null,
		reset: () => {},
	};
}

// Re-export SDK query key for consumers to migrate
export { userQueryKey };
