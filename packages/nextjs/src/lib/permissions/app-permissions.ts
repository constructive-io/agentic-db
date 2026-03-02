/**
 * App-level permission constants and utilities
 * These permissions control access to platform-wide administrative features
 */

import type { AppMembership } from '@/lib/gql/hooks/schema-builder/app';

/**
 * App-level permission constants
 * These map to the permission bitstring positions in the database
 */
export const APP_PERMISSIONS = {
	// User management
	VIEW_USERS: 'app:users:view',
	MANAGE_USERS: 'app:users:manage',

	// Invite management
	VIEW_INVITES: 'app:invites:view',
	MANAGE_INVITES: 'app:invites:manage',

	// Settings management
	VIEW_SETTINGS: 'app:settings:view',
	MANAGE_SETTINGS: 'app:settings:manage',

	// Organization management
	VIEW_ORGANIZATIONS: 'app:organizations:view',
	MANAGE_ORGANIZATIONS: 'app:organizations:manage',
} as const;

export type AppPermission = (typeof APP_PERMISSIONS)[keyof typeof APP_PERMISSIONS];

/**
 * Check if a user has app admin privileges
 * App admins have access to all platform-level features
 */
export function isAppAdmin(membership: AppMembership | null | undefined): boolean {
	if (!membership) return false;
	return membership.isAdmin === true;
}

/**
 * Check if a user has app owner privileges
 * App owners have the highest level of access
 */
export function isAppOwner(membership: AppMembership | null | undefined): boolean {
	if (!membership) return false;
	return membership.isOwner === true;
}

/**
 * Check if an app membership is active and valid
 */
export function isAppMembershipActive(membership: AppMembership | null | undefined): boolean {
	if (!membership) return false;
	return membership.isActive === true && membership.isBanned !== true && membership.isDisabled !== true;
}

/**
 * Check if a user has a specific app permission
 * App admins and owners automatically have all permissions
 *
 * @param membership - The user's app membership
 * @param permission - The permission to check
 * @returns boolean indicating if the user has the permission
 */
export function hasAppPermission(
	membership: AppMembership | null | undefined,
	_permission: AppPermission,
): boolean {
	if (!membership) return false;

	// App admins and owners have all permissions
	if (membership.isAdmin || membership.isOwner) return true;

	// Check if membership is active
	if (!isAppMembershipActive(membership)) return false;

	// For non-admin users, we would check the permissions bitstring here
	// This depends on how permissions are encoded in the database
	// For now, only admins have app-level permissions
	return false;
}

/**
 * Check if a user can view app users
 */
export function canViewAppUsers(membership: AppMembership | null | undefined): boolean {
	return hasAppPermission(membership, APP_PERMISSIONS.VIEW_USERS);
}

/**
 * Check if a user can manage app users
 */
export function canManageAppUsers(membership: AppMembership | null | undefined): boolean {
	return hasAppPermission(membership, APP_PERMISSIONS.MANAGE_USERS);
}

/**
 * Check if a user can view app invites
 */
export function canViewAppInvites(membership: AppMembership | null | undefined): boolean {
	return hasAppPermission(membership, APP_PERMISSIONS.VIEW_INVITES);
}

/**
 * Check if a user can manage app invites
 */
export function canManageAppInvites(membership: AppMembership | null | undefined): boolean {
	return hasAppPermission(membership, APP_PERMISSIONS.MANAGE_INVITES);
}

/**
 * Check if a user can view app settings
 */
export function canViewAppSettings(membership: AppMembership | null | undefined): boolean {
	return hasAppPermission(membership, APP_PERMISSIONS.VIEW_SETTINGS);
}

/**
 * Check if a user can manage app settings
 */
export function canManageAppSettings(membership: AppMembership | null | undefined): boolean {
	return hasAppPermission(membership, APP_PERMISSIONS.MANAGE_SETTINGS);
}

/**
 * Get all app permissions for a membership
 */
export function getAppPermissions(membership: AppMembership | null | undefined): AppPermission[] {
	if (!membership) return [];

	const permissions: AppPermission[] = [];

	// Check each permission
	for (const permission of Object.values(APP_PERMISSIONS)) {
		if (hasAppPermission(membership, permission)) {
			permissions.push(permission);
		}
	}

	return permissions;
}
