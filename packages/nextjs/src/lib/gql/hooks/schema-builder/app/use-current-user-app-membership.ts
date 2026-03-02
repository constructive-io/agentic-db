/**
 * Hook for fetching the current user's app membership
 * Used to determine if the user has app-level admin privileges
 * Tier 2 wrapper: Uses SDK hook + auth state integration
 */
import type { SchemaContext } from '@/app-config';
import {
	useAppMembershipsQuery,
	appMembershipsQueryKey,
} from '@sdk/api';
import { useAppStore } from '@/store/app-store';

export interface AppMembership {
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
}

export interface UseCurrentUserAppMembershipOptions {
	/** Enable/disable the query */
	enabled?: boolean;
	/** Override user ID (defaults to current authenticated user) */
	userId?: string;
	/** Override schema context (defaults to schema-builder) */
	context?: SchemaContext;
}

export interface UseCurrentUserAppMembershipResult {
	/** The app membership record for the current user */
	appMembership: AppMembership | null;
	/** Whether the user is an app admin */
	isAppAdmin: boolean;
	/** Whether the user is an app owner */
	isAppOwner: boolean;
	/** Whether the membership is active */
	isActive: boolean;
	/** Loading state */
	isLoading: boolean;
	/** Error state */
	error: Error | null;
	/** Refetch function */
	refetch: () => Promise<unknown>;
}

/**
 * Hook for fetching the current user's app membership
 *
 * @example
 * ```tsx
 * const { isAppAdmin, isLoading } = useCurrentUserAppMembership();
 *
 * if (isAppAdmin) {
 *   // Show admin-only features
 * }
 * ```
 */
export function useCurrentUserAppMembership(
	options: UseCurrentUserAppMembershipOptions = {},
): UseCurrentUserAppMembershipResult {
	const { enabled = true, userId, context = 'schema-builder' } = options;
	const { user, token } = useAppStore((state) => ({
		user: state.auth.user,
		token: state.auth.token,
	}),
	);

	// Determine the actor ID to use
	const actorId = userId || user?.id || token?.userId;

	const { data, isLoading, error, refetch } = useAppMembershipsQuery({
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
			where: { actorId: { equalTo: actorId! } },
			first: 1,
		},
		enabled: enabled && !!actorId,
		staleTime: 5 * 60 * 1000, // 5 minutes
		refetchOnMount: true,
	});

	const membership = data?.appMemberships?.nodes?.[0];
	const appMembership: AppMembership | null = membership?.id
		? {
				id: membership.id,
				actorId: membership.actorId ?? '',
				isAdmin: membership.isAdmin ?? false,
				isOwner: membership.isOwner ?? false,
				isActive: membership.isActive ?? false,
				isApproved: membership.isApproved ?? false,
				isBanned: membership.isBanned ?? false,
				isDisabled: membership.isDisabled ?? false,
				isVerified: membership.isVerified ?? false,
				permissions: membership.permissions,
				granted: membership.granted,
			}
		: null;

	return {
		appMembership,
		isAppAdmin: appMembership?.isAdmin ?? false,
		isAppOwner: appMembership?.isOwner ?? false,
		isActive: appMembership?.isActive ?? false,
		isLoading,
		error: error ?? null,
		refetch,
	};
}

/** @deprecated Use appMembershipByActorIdQueryKey from SDK instead */
export const appMembershipQueryKeys = {
	all: ['app-membership'] as const,
	byContext: (context: SchemaContext) => [...appMembershipQueryKeys.all, { context }] as const,
	byUser: (context: SchemaContext, userId: string) =>
		[...appMembershipQueryKeys.byContext(context), { actorId: userId }] as const,
};

// Re-export SDK query key for consumers to migrate
export { appMembershipsQueryKey };
