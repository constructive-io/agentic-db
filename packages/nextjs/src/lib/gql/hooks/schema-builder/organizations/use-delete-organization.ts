/**
 * Hook for deleting an organization
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 *
 * Deleting an organization removes:
 * - The User entity (type=1)
 * - Associated OrganizationSetting (cascaded by database)
 * - Associated Memberships (cascaded by database)
 *
 * Only organization owners can delete an organization.
 */
import { useQueryClient } from '@tanstack/react-query';

import type { SchemaContext } from '@/app-config';
import { useDeleteUserMutation } from '@sdk/api';

import { organizationsQueryKeys } from './use-organizations';

/**
 * Input for deleting an organization
 */
export interface DeleteOrganizationInput {
	/** Organization ID to delete */
	orgId: string;
	/** Organization name for confirmation (optional, for UI validation) */
	confirmName?: string;
}

/**
 * Result of organization deletion
 */
export interface DeleteOrganizationResult {
	/** The deleted organization ID */
	deletedOrgId: string;
	/** The deleted organization name */
	deletedOrgName: string | null;
}

export interface UseDeleteOrganizationOptions {
	/** Override schema context (defaults to schema-builder) */
	context?: SchemaContext;
	/** Callback on successful deletion */
	onSuccess?: (result: DeleteOrganizationResult) => void;
	/** Callback on error */
	onError?: (error: Error) => void;
}

export interface UseDeleteOrganizationResult {
	/** Function to delete an organization */
	deleteOrganization: (input: DeleteOrganizationInput) => Promise<DeleteOrganizationResult>;
	/** Whether deletion is in progress */
	isDeleting: boolean;
	/** Error from last deletion attempt */
	error: Error | null;
	/** Reset error state */
	reset: () => void;
}

/**
 * Hook for deleting an organization
 *
 * Only owners can delete an organization. The UI should verify
 * ownership before showing the delete option.
 *
 * @example
 * ```tsx
 * const { deleteOrganization, isDeleting } = useDeleteOrganization({
 *   onSuccess: () => {
 *     toast.success('Organization deleted');
 *     router.push('/');
 *   },
 * });
 *
 * // In delete confirmation dialog
 * const handleConfirmDelete = async () => {
 *   await deleteOrganization({ orgId: organization.id });
 * };
 * ```
 */
export function useDeleteOrganization(
	options: UseDeleteOrganizationOptions = {}
): UseDeleteOrganizationResult {
	const { context = 'schema-builder', onSuccess, onError } = options;
	const queryClient = useQueryClient();
	const deleteUserMutation = useDeleteUserMutation({ selection: { fields: { id: true } } });

	const deleteOrganization = async (input: DeleteOrganizationInput): Promise<DeleteOrganizationResult> => {
		const { orgId } = input;

		await deleteUserMutation.mutateAsync({ id: orgId });

		// Invalidate all organization caches
		queryClient.invalidateQueries({ queryKey: organizationsQueryKeys.all });
		// Remove the specific organization from cache
		queryClient.removeQueries({
			queryKey: organizationsQueryKeys.detail(context, orgId),
		});

		const deleteResult: DeleteOrganizationResult = {
			deletedOrgId: orgId,
			deletedOrgName: null, // SDK mutation doesn't return displayName
		};

		onSuccess?.(deleteResult);
		return deleteResult;
	};

	return {
		deleteOrganization: async (input: DeleteOrganizationInput) => {
			try {
				return await deleteOrganization(input);
			} catch (error) {
				onError?.(error as Error);
				throw error;
			}
		},
		isDeleting: deleteUserMutation.isPending,
		error: deleteUserMutation.error,
		reset: deleteUserMutation.reset,
	};
}
