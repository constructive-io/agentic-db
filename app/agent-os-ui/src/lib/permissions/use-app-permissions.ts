/**
 * Hook for accessing app-level permissions
 * Provides a convenient way to check user permissions in components
 */

import { useMemo } from 'react';

import { useCurrentUserAppMembership } from '@/lib/gql/hooks/schema-builder/app';
import {
	isAppAdmin,
	isAppOwner,
	isAppMembershipActive,
	canViewAppUsers,
	canManageAppUsers,
	canViewAppInvites,
	canManageAppInvites,
	canViewAppSettings,
	canManageAppSettings,
	getAppPermissions,
	type AppPermission,
} from './app-permissions';

export interface UseAppPermissionsResult {
	/** Whether the current user is an app admin */
	isAppAdmin: boolean;
	/** Whether the current user is an app owner */
	isAppOwner: boolean;
	/** Whether the user's membership is active */
	isActive: boolean;
	/** Whether the user can view app users */
	canViewUsers: boolean;
	/** Whether the user can manage app users */
	canManageUsers: boolean;
	/** Whether the user can view app invites */
	canViewInvites: boolean;
	/** Whether the user can manage app invites */
	canManageInvites: boolean;
	/** Whether the user can view app settings */
	canViewSettings: boolean;
	/** Whether the user can manage app settings */
	canManageSettings: boolean;
	/** All permissions the user has */
	permissions: AppPermission[];
	/** Whether the permissions are still loading */
	isLoading: boolean;
	/** Error if any occurred while fetching permissions */
	error: Error | null;
}

/**
 * Hook for accessing the current user's app-level permissions
 *
 * @example
 * ```tsx
 * function AdminSection() {
 *   const { isAppAdmin, canViewUsers, isLoading } = useAppPermissions();
 *
 *   if (isLoading) return <Spinner />;
 *
 *   if (!isAppAdmin) {
 *     return <AccessDenied />;
 *   }
 *
 *   return (
 *     <div>
 *       {canViewUsers && <UsersList />}
 *     </div>
 *   );
 * }
 * ```
 */
export function useAppPermissions(): UseAppPermissionsResult {
	const { appMembership, isLoading, error } = useCurrentUserAppMembership();

	const permissions = useMemo(() => {
		return {
			isAppAdmin: isAppAdmin(appMembership),
			isAppOwner: isAppOwner(appMembership),
			isActive: isAppMembershipActive(appMembership),
			canViewUsers: canViewAppUsers(appMembership),
			canManageUsers: canManageAppUsers(appMembership),
			canViewInvites: canViewAppInvites(appMembership),
			canManageInvites: canManageAppInvites(appMembership),
			canViewSettings: canViewAppSettings(appMembership),
			canManageSettings: canManageAppSettings(appMembership),
			permissions: getAppPermissions(appMembership),
		};
	}, [appMembership]);

	return {
		...permissions,
		isLoading,
		error,
	};
}
