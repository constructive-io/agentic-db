/**
 * Hooks for managing membership permission defaults
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 */
import { useQueryClient } from '@tanstack/react-query';

import type { SchemaContext } from '@/app-config';
import {
	orgPermissionDefaultsQueryKey,
	useCreateOrgPermissionDefaultMutation,
	useOrgPermissionDefaultsQuery,
	useUpdateOrgPermissionDefaultMutation,
} from '@sdk/api';
import { useAppStore } from '@/store/app-store';

export interface MembershipPermissionDefault {
	id: string;
	entityId: string;
	permissions: string;
}

/** @deprecated Use orgPermissionDefaultsQueryKey from SDK instead */
export const membershipPermissionDefaultQueryKeys = {
	all: ['membership-permission-default'] as const,
	byContext: (context: SchemaContext) => [...membershipPermissionDefaultQueryKeys.all, { context }] as const,
	byId: (context: SchemaContext, id: string) =>
		[...membershipPermissionDefaultQueryKeys.byContext(context), { id }] as const,
};

export interface UseMembershipPermissionDefaultOptions {
	entityId: string;
	enabled?: boolean;
	context?: SchemaContext;
}

export function useMembershipPermissionDefault(options: UseMembershipPermissionDefaultOptions) {
	const { entityId, enabled = true, context = 'schema-builder' } = options;

	const isAuthenticated = useAppStore((state) => state.auth.isAuthenticated);

	const { data, isLoading, error, refetch } = useOrgPermissionDefaultsQuery({
		selection: {
			fields: {
				id: true,
				entityId: true,
				permissions: true,
			},
			where: { entityId: { equalTo: entityId } },
		},
		enabled: enabled && isAuthenticated && !!entityId,
		staleTime: 30 * 1000,
		refetchOnMount: true,
	});

	const firstNode = data?.orgPermissionDefaults?.nodes?.[0];
	const membershipPermissionDefault: MembershipPermissionDefault | null = firstNode?.id
		? {
				id: firstNode.id,
				entityId: firstNode.entityId ?? entityId,
				permissions: firstNode.permissions ?? '',
			}
		: null;

	return {
		membershipPermissionDefault,
		isLoading,
		error: error ?? null,
		refetch,
	};
}

export interface CreateMembershipPermissionDefaultInput {
	entityId: string;
	permissions: string;
	context?: SchemaContext;
}

export function useCreateMembershipPermissionDefault(_defaultContext: SchemaContext = 'schema-builder') {
	const queryClient = useQueryClient();
	const createMutation = useCreateOrgPermissionDefaultMutation({ selection: { fields: { id: true } } });

	return {
		createMembershipPermissionDefault: async (input: CreateMembershipPermissionDefaultInput) => {
			const result = await createMutation.mutateAsync({
				entityId: input.entityId,
				permissions: input.permissions,
			});
			// Invalidate cache
			queryClient.invalidateQueries({
				queryKey: orgPermissionDefaultsQueryKey({ where: { entityId: { equalTo: input.entityId } } }),
			});
			return result.createOrgPermissionDefault?.orgPermissionDefault ?? null;
		},
		isCreating: createMutation.isPending,
		error: createMutation.error,
		reset: createMutation.reset,
	};
}

export interface UpdateMembershipPermissionDefaultInput {
	id: string;
	patch: { entityId?: string; permissions?: string };
	context?: SchemaContext;
}

export function useUpdateMembershipPermissionDefault(_defaultContext: SchemaContext = 'schema-builder') {
	const queryClient = useQueryClient();
	const updateMutation = useUpdateOrgPermissionDefaultMutation({ selection: { fields: { id: true, entityId: true } } });

	return {
		updateMembershipPermissionDefault: async (input: UpdateMembershipPermissionDefaultInput) => {
			const result = await updateMutation.mutateAsync({
				id: input.id,
				orgPermissionDefaultPatch: input.patch,
			});
			// Invalidate related caches
			const entityId = input.patch.entityId ?? result.updateOrgPermissionDefault?.orgPermissionDefault?.entityId;
			if (entityId) {
				queryClient.invalidateQueries({
					queryKey: orgPermissionDefaultsQueryKey({ where: { entityId: { equalTo: entityId } } }),
				});
			}
			return result.updateOrgPermissionDefault?.orgPermissionDefault ?? null;
		},
		isUpdating: updateMutation.isPending,
		error: updateMutation.error,
		reset: updateMutation.reset,
	};
}

// Re-export SDK query key for consumers to migrate
export { orgPermissionDefaultsQueryKey };
