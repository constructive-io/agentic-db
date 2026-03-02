import {
	RiAccountCircleLine,
	RiMailLine,
	RiOrganizationChart,
	RiSettings3Line,
	RiTeamLine,
	RiUserLine,
	RiUserSettingsLine,
} from '@remixicon/react';

import type { NavGroup, NavItem } from '@/components/app-shell/app-shell.types';
import { APP_ROUTES } from '@/app-routes';

/**
 * Navigation level based on entity context
 * - root: No organization selected (app-level view)
 * - org: Organization selected (org-level view)
 */
export type NavigationLevel = 'root' | 'org';

export interface SidebarConfigOptions {
	/** Current pathname for active state detection */
	pathname: string;
	/** Whether the current user is an app admin */
	isAppAdmin?: boolean;
	/** Logout handler */
	onLogout?: () => void;
	/** Custom render for settings (e.g., RuntimeEndpointsDialog) */
	settingsRender?: React.ReactNode;
	/** Active organization ID (for building org-specific routes) */
	activeOrgId?: string;
	/** Function to check if a route is active */
	isRouteActive?: (routeKey: string) => boolean;
}

/**
 * Get navigation items for the ROOT level (no org selected)
 * Shows: Organizations, App items (Invites, Users, Settings - admin only)
 *
 * At root level, app-level navigation items are only visible to app admins.
 * Account actions (Profile, Settings, Sign Out) are in the top bar UserDropdown.
 */
function getRootNavigation(options: SidebarConfigOptions): NavGroup[] {
	const { isRouteActive, isAppAdmin } = options;

	const mainItems: NavItem[] = [
		{
			id: 'organizations',
			label: 'Organizations',
			icon: RiOrganizationChart,
			href: '/',
			isActive: isRouteActive?.('ROOT') || isRouteActive?.('ORGANIZATIONS'),
		},
	];

	const groups: NavGroup[] = [
		{
			id: 'main',
			position: 'top',
			items: mainItems,
		},
	];

	// App-level admin items - only shown to app admins
	// These are for managing the application itself (users, invites, settings)
	if (isAppAdmin) {
		groups.push({
			id: 'app',
			position: 'top',
			items: [
				{
					id: 'app-invites',
					label: 'Invites',
					icon: RiMailLine,
					href: APP_ROUTES.APP_INVITES.path,
					isActive: isRouteActive?.('APP_INVITES'),
				},
				{
					id: 'app-users',
					label: 'Users',
					icon: RiUserLine,
					href: APP_ROUTES.APP_USERS.path,
					isActive: isRouteActive?.('APP_USERS'),
				},
				{
					id: 'app-settings',
					label: 'Settings',
					icon: RiSettings3Line,
					href: APP_ROUTES.APP_SETTINGS.path,
					isActive: isRouteActive?.('APP_SETTINGS'),
				},
			],
		});
	}

	// Account items
	groups.push({
		id: 'account',
		position: 'top',
		items: [
			{
				id: 'account-settings',
				label: 'Account',
				icon: RiUserSettingsLine,
				href: APP_ROUTES.ACCOUNT_SETTINGS.path,
				isActive: isRouteActive?.('ACCOUNT_SETTINGS'),
			},
		],
	});

	return groups;
}

/**
 * Get navigation items for the ORG level (org selected)
 * Shows: Members, Invites, Settings
 * Account actions are in the top bar UserDropdown.
 */
function getOrgNavigation(options: SidebarConfigOptions): NavGroup[] {
	const { activeOrgId, isRouteActive } = options;

	// Build org-specific paths
	const orgBasePath = activeOrgId ? `/orgs/${activeOrgId}` : '/orgs';

	const mainItems: NavItem[] = [
		{
			id: 'members',
			label: 'Members',
			icon: RiTeamLine,
			href: `${orgBasePath}/members`,
			isActive: isRouteActive?.('ORG_MEMBERS'),
		},
		{
			id: 'invites',
			label: 'Invites',
			icon: RiMailLine,
			href: `${orgBasePath}/invites`,
			isActive: isRouteActive?.('ORG_INVITES'),
		},
		{
			id: 'settings',
			label: 'Settings',
			icon: RiSettings3Line,
			href: `${orgBasePath}/settings`,
			isActive: isRouteActive?.('ORG_SETTINGS'),
		},
	];

	return [
		{
			id: 'main',
			position: 'top',
			items: mainItems,
		},
	];
}

/**
 * Get sidebar navigation configuration based on the current level
 * Default case returns root navigation as a safe fallback
 */
export function getSidebarConfig(level: NavigationLevel, options: SidebarConfigOptions): NavGroup[] {
	switch (level) {
		case 'root':
			return getRootNavigation(options);
		case 'org':
			return getOrgNavigation(options);
		default:
			// Default to root navigation as the safest fallback
			// This ensures users see the organizations list if level is somehow undefined
			return getRootNavigation(options);
	}
}
