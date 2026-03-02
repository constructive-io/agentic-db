/**
 * Hooks for managing organization membership defaults
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 */
import { useQueryClient } from '@tanstack/react-query';

import type { SchemaContext } from '@/app-config';
import {
	orgMembershipDefaultsQueryKey,
	useCreateOrgMembershipDefaultMutation,
	useOrgMembershipDefaultsQuery,
	useUpdateOrgMembershipDefaultMutation,
} from '@sdk/api';
import { useAppStore } from '@/store/app-store';

export interface OrgMembershipDefault {
	id: string;
	entityId: string;
	isApproved: boolean;
}

/** @deprecated Use orgMembershipDefaultsQueryKey from SDK instead */
export const orgMembershipDefaultQueryKeys = {
	all: ['org-membership-default'] as const,
	byContext: (context: SchemaContext) => [...orgMembershipDefaultQueryKeys.all, { context }] as const,
	byOrg: (context: SchemaContext, orgId: string) =>
		[...orgMembershipDefaultQueryKeys.byContext(context), { orgId }] as const,
};

export interface UseOrgMembershipDefaultOptions {
	orgId: string;
	enabled?: boolean;
	context?: SchemaContext;
}

export function useOrgMembershipDefault(options: UseOrgMembershipDefaultOptions) {
	const { orgId, enabled = true, context = 'schema-builder' } = options;

	const isAuthenticated = useAppStore((state) => state.auth.isAuthenticated);

	const { data, isLoading, error, refetch } = useOrgMembershipDefaultsQuery({
		selection: {
			fields: {
				id: true,
				entityId: true,
				isApproved: true,
			},
			where: { entityId: { equalTo: orgId } },
			first: 1,
		},
		enabled: enabled && isAuthenticated && !!orgId,
		staleTime: 30 * 1000,
		refetchOnMount: true,
	});

	const node = data?.orgMembershipDefaults?.nodes?.[0];
	const membershipDefault: OrgMembershipDefault | null = node?.id
		? {
				id: node.id,
				entityId: node.entityId ?? orgId,
				isApproved: node.isApproved ?? false,
			}
		: null;

	return {
		membershipDefault,
		isLoading,
		error: error ?? null,
		refetch,
	};
}

export interface UpdateOrgMembershipDefaultInput {
	orgId: string;
	patch: { isApproved?: boolean };
	context?: SchemaContext;
}

export function useUpdateOrgMembershipDefault(_defaultContext: SchemaContext = 'schema-builder') {
	const queryClient = useQueryClient();
	const updateMutation = useUpdateOrgMembershipDefaultMutation({
		selection: { fields: { id: true } },
	});

	return {
		updateMembershipDefault: async (input: UpdateOrgMembershipDefaultInput & { id: string }) => {
			const result = await updateMutation.mutateAsync({
				id: input.id,
				orgMembershipDefaultPatch: input.patch,
			});
			// Invalidate cache
			queryClient.invalidateQueries({
				queryKey: orgMembershipDefaultsQueryKey({ where: { entityId: { equalTo: input.orgId } } }),
			});
			return result.updateOrgMembershipDefault?.orgMembershipDefault ?? null;
		},
		isUpdating: updateMutation.isPending,
		error: updateMutation.error,
		reset: updateMutation.reset,
	};
}

export interface CreateOrgMembershipDefaultInput {
	orgId: string;
	isApproved: boolean;
	context?: SchemaContext;
}

export function useCreateOrgMembershipDefault(_defaultContext: SchemaContext = 'schema-builder') {
	const queryClient = useQueryClient();
	const createMutation = useCreateOrgMembershipDefaultMutation({ selection: { fields: { id: true } } });

	return {
		createMembershipDefault: async (input: CreateOrgMembershipDefaultInput) => {
			const result = await createMutation.mutateAsync({
				entityId: input.orgId,
				isApproved: input.isApproved,
			});
			// Invalidate cache
			queryClient.invalidateQueries({
				queryKey: orgMembershipDefaultsQueryKey({ where: { entityId: { equalTo: input.orgId } } }),
			});
			return result.createOrgMembershipDefault?.orgMembershipDefault ?? null;
		},
		isCreating: createMutation.isPending,
		error: createMutation.error,
		reset: createMutation.reset,
	};
}

// Re-export SDK query key for consumers to migrate
export { orgMembershipDefaultsQueryKey };
