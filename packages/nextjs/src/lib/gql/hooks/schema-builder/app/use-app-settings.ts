/**
 * Hook for fetching and updating app-level settings
 * Manages the AppMembershipDefault which controls default member permissions
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 */
import { useQueryClient } from '@tanstack/react-query';

import type { SchemaContext } from '@/app-config';
import {
	appMembershipDefaultsQueryKey,
	useAppMembershipDefaultsQuery,
	useCreateAppMembershipDefaultMutation,
	useUpdateAppMembershipDefaultMutation,
} from '@sdk/api';
import { useAppStore } from '@/store/app-store';

export interface AppMembershipDefaultSettings {
	id: string;
	isApproved: boolean;
	isVerified: boolean;
}

export interface UseAppSettingsOptions {
	enabled?: boolean;
	context?: SchemaContext;
}

export interface UseAppSettingsResult {
	settings: AppMembershipDefaultSettings | null;
	isLoading: boolean;
	error: Error | null;
	refetch: () => Promise<unknown>;
}

/**
 * Hook for fetching app-level settings (member defaults)
 *
 * @example
 * ```tsx
 * const { settings, isLoading } = useAppSettings();
 *
 * if (settings) {
 *   console.log(settings.isApproved); // Whether new members require approval
 *   console.log(settings.isVerified); // Whether new members require email verification
 * }
 * ```
 */
export function useAppSettings(options: UseAppSettingsOptions = {}): UseAppSettingsResult {
	const { enabled = true, context = 'schema-builder' } = options;

	const isAuthenticated = useAppStore((state) => state.auth.isAuthenticated);

	const { data, isLoading, error, refetch } = useAppMembershipDefaultsQuery({
		selection: {
			fields: {
				id: true,
				isApproved: true,
				isVerified: true,
			},
			first: 1,
		},
		enabled: enabled && isAuthenticated,
		staleTime: 5 * 60 * 1000, // 5 minutes
		refetchOnMount: true,
	});

	const node = data?.appMembershipDefaults?.nodes?.[0];
	const settings: AppMembershipDefaultSettings | null = node?.id
		? {
				id: node.id,
				isApproved: node.isApproved ?? false,
				isVerified: node.isVerified ?? false,
			}
		: null;

	return {
		settings,
		isLoading,
		error: error ?? null,
		refetch,
	};
}

export interface UpdateAppSettingsData {
	isApproved?: boolean;
	isVerified?: boolean;
}

export interface UseUpdateAppSettingsResult {
	updateSettings: (data: UpdateAppSettingsData) => Promise<AppMembershipDefaultSettings | null | undefined>;
	isUpdating: boolean;
	error: Error | null;
}

/**
 * Hook for updating app-level settings
 *
 * @example
 * ```tsx
 * const { updateSettings, isUpdating } = useUpdateAppSettings();
 * const { settings } = useAppSettings();
 *
 * await updateSettings({
 *   isApproved: true,  // Require admin approval for new members
 *   isVerified: true,  // Require email verification
 * });
 * ```
 */
export function useUpdateAppSettings(_context: SchemaContext = 'schema-builder'): UseUpdateAppSettingsResult {
	const queryClient = useQueryClient();
	const { settings } = useAppSettings({ context: _context });
	const updateMutation = useUpdateAppMembershipDefaultMutation({ selection: { fields: { id: true, isApproved: true, isVerified: true } } });
	const createMutation = useCreateAppMembershipDefaultMutation({ selection: { fields: { id: true, isApproved: true, isVerified: true } } });

	const updateSettings = async (data: UpdateAppSettingsData) => {
		let result: AppMembershipDefaultSettings | null = null;

		if (settings?.id) {
			const updateResult = await updateMutation.mutateAsync({
				id: settings.id, appMembershipDefaultPatch: data,
			});
			const node = updateResult.updateAppMembershipDefault?.appMembershipDefault;
			result = node?.id
				? { id: node.id, isApproved: node.isApproved ?? false, isVerified: node.isVerified ?? false }
				: null;
		} else {
			const createResult = await createMutation.mutateAsync({
				isApproved: data.isApproved ?? false,
				isVerified: data.isVerified ?? true,
			});
			const node = createResult.createAppMembershipDefault?.appMembershipDefault;
			result = node?.id
				? { id: node.id, isApproved: node.isApproved ?? false, isVerified: node.isVerified ?? false }
				: null;
		}

		// Invalidate cache
		queryClient.invalidateQueries({ queryKey: appSettingsQueryKeys.all });
		return result;
	};

	return {
		updateSettings,
		isUpdating: updateMutation.isPending || createMutation.isPending,
		error: updateMutation.error || createMutation.error,
	};
}

/** @deprecated Use appMembershipDefaultsQueryKey from SDK instead */
export const appSettingsQueryKeys = {
	all: ['app-settings'] as const,
	settings: (context: SchemaContext) => [...appSettingsQueryKeys.all, { context }] as const,
};

// Re-export SDK query key for consumers to migrate
export { appMembershipDefaultsQueryKey };
