/**
 * Hook for updating an organization
 * Tier 4 wrapper: adds cache invalidation
 *
 * Updates can include:
 * - User fields (displayName, username, profilePicture)
 * - OrganizationSetting fields (legalName, address, etc.)
 */
import { useMutation, useQueryClient } from '@tanstack/react-query';

import type { SchemaContext } from '@/app-config';
import { useUpdateUserMutation } from '@sdk/api';

import type { OrganizationSettings } from './organization.types';
import { organizationsQueryKeys } from './use-organizations';

// TODO: Backend migration removed OrganizationSetting mutations
// These need backend consultation for proper replacement
// const UPDATE_ORG_SETTINGS_MUTATION = ...
// const CREATE_ORG_SETTINGS_MUTATION = ...

/**
 * Input for updating an organization
 */
export interface UpdateOrganizationInput {
	/** Organization ID (User ID) */
	orgId: string;
	/** Organization settings ID (required if updating settings) */
	settingsId?: string;
	/** User field updates */
	user?: {
		displayName?: string;
		username?: string;
	};
	/** Organization settings updates */
	settings?: {
		legalName?: string | null;
		addressLineOne?: string | null;
		addressLineTwo?: string | null;
		city?: string | null;
		state?: string | null;
	};
}

/**
 * Result of organization update
 */
export interface UpdateOrganizationResult {
	organization: {
		id: string;
		displayName: string | null;
		username: string | null;
		profilePicture: unknown | null;
	};
	settings: Omit<OrganizationSettings, 'createdAt'> | null;
}

export interface UseUpdateOrganizationOptions {
	/** Override schema context (defaults to schema-builder) */
	context?: SchemaContext;
	/** Callback on successful update */
	onSuccess?: (result: UpdateOrganizationResult) => void;
	/** Callback on error */
	onError?: (error: Error) => void;
}

export interface UseUpdateOrganizationResult {
	/** Function to update an organization */
	updateOrganization: (input: UpdateOrganizationInput) => Promise<UpdateOrganizationResult>;
	/** Whether update is in progress */
	isUpdating: boolean;
	/** Error from last update attempt */
	error: Error | null;
	/** Reset error state */
	reset: () => void;
}

/**
 * Hook for updating an organization
 *
 * @example
 * ```tsx
 * const { updateOrganization, isUpdating } = useUpdateOrganization({
 *   onSuccess: () => toast.success('Organization updated'),
 * });
 *
 * await updateOrganization({
 *   orgId: 'org-123',
 *   settingsId: 'settings-456',
 *   user: { displayName: 'New Name' },
 *   settings: { city: 'San Francisco', state: 'CA' },
 * });
 * ```
 */
export function useUpdateOrganization(options: UseUpdateOrganizationOptions = {}): UseUpdateOrganizationResult {
	const { context = 'schema-builder', onSuccess, onError } = options;
	const queryClient = useQueryClient();
	const updateUserMutation = useUpdateUserMutation({ selection: { fields: { id: true, displayName: true, username: true, profilePicture: true } } });

	const mutation = useMutation({
		mutationFn: async (input: UpdateOrganizationInput): Promise<UpdateOrganizationResult> => {
			const { orgId, user, settings } = input;

			let updatedUserId: string | null = null;
			let updatedDisplayName: string | null = null;
			let updatedUsername: string | null = null;
			let updatedProfilePicture: unknown | null = null;

			// Update User fields if provided
			if (user && Object.keys(user).length > 0) {
				const patch: Record<string, unknown> = {};
				if (user.displayName !== undefined) patch.displayName = user.displayName;
				if (user.username !== undefined) patch.username = user.username;

				if (Object.keys(patch).length > 0) {
					const userResult = await updateUserMutation.mutateAsync({ id: orgId, userPatch: patch });
					const resultUser = userResult.updateUser?.user;
					if (resultUser) {
						updatedUserId = resultUser.id ?? null;
						updatedDisplayName = resultUser.displayName ?? null;
						updatedUsername = resultUser.username ?? null;
						updatedProfilePicture = resultUser.profilePicture ?? null;
					}
				}
			}

			// TODO: OrganizationSetting mutations removed from schema
			// Settings updates need backend consultation for proper replacement
			if (settings && Object.keys(settings).length > 0) {
				console.warn('useUpdateOrganization: OrganizationSetting mutations removed from schema');
			}

			return {
				organization: updatedUserId
					? {
							id: updatedUserId,
							displayName: updatedDisplayName,
							username: updatedUsername,
							profilePicture: updatedProfilePicture,
						}
					: {
							id: orgId,
							displayName: null,
							username: null,
							profilePicture: null,
						},
				settings: null, // TODO: OrganizationSetting removed
			};
		},
		onSuccess: (result, variables) => {
			// Invalidate relevant caches
			queryClient.invalidateQueries({ queryKey: organizationsQueryKeys.all });
			queryClient.invalidateQueries({
				queryKey: organizationsQueryKeys.detail(context, variables.orgId),
			});
			onSuccess?.(result);
		},
		onError: (error: Error) => {
			onError?.(error);
		},
	});

	return {
		updateOrganization: mutation.mutateAsync,
		isUpdating: mutation.isPending,
		error: mutation.error,
		reset: mutation.reset,
	};
}
