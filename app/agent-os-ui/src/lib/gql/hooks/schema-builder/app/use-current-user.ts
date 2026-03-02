/**
 * Hook for fetching the current authenticated user
 * Tier 2 wrapper: Uses SDK hook + auth state integration
 *
 * Uses `currentUser` query which relies on backend auth context,
 * rather than `user(id: $id)` which requires knowing the user ID upfront.
 */
import type { SchemaContext } from '@/app-config';
import {
	useCurrentUserQuery as useCurrentUserQuerySdk,
	currentUserQueryKey,
} from '@sdk/api';
import { useAppStore } from '@/store/app-store';

export interface CurrentUser {
	id: string;
	displayName: string | null;
	username: string | null;
	profilePicture: unknown | null;
}

export interface UseCurrentUserOptions {
	/** Enable/disable the query */
	enabled?: boolean;
	/** Override actor/user ID (defaults to current authenticated user) - ignored, kept for API compat */
	userId?: string;
	/** Override schema context (defaults to schema-builder) */
	context?: SchemaContext;
}

export interface UseCurrentUserResult {
	user: CurrentUser | null;
	isLoading: boolean;
	error: Error | null;
	refetch: () => Promise<unknown>;
}

export function useCurrentUser(options: UseCurrentUserOptions = {}): UseCurrentUserResult {
	const { enabled = true, context = 'schema-builder' } = options;
	const token = useAppStore((state) => state.auth.token);

	// Use the SDK's currentUser query which relies on backend auth context
	const { data, isLoading, error, refetch } = useCurrentUserQuerySdk({
		selection: {
			fields: {
				id: true,
				displayName: true,
				username: true,
				profilePicture: true,
			},
		},
		enabled: enabled && !!token,
		staleTime: 5 * 60 * 1000,
		refetchOnMount: true,
	});

	const userNode = data?.currentUser;

	return {
		user: userNode?.id
			? {
					id: userNode.id,
					displayName: userNode.displayName ?? null,
					username: userNode.username ?? null,
					profilePicture: userNode.profilePicture ?? null,
				}
			: null,
		isLoading,
		error: error ?? null,
		refetch,
	};
}

/** @deprecated Use currentUserQueryKey from SDK instead */
export const currentUserQueryKeys = {
	all: ['current-user'] as const,
	byContext: (context: SchemaContext) => [...currentUserQueryKeys.all, { context }] as const,
	byUser: (context: SchemaContext, userId: string) => [...currentUserQueryKeys.byContext(context), { userId }] as const,
};

// Re-export SDK query key for consumers to migrate
export { currentUserQueryKey };
