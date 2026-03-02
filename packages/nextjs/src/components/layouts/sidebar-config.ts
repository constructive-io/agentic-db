'use client';

import {
	RiBuilding2Line,
	RiGroupLine,
	RiLogoutBoxLine,
	RiMailLine,
	RiSettings3Line,
	RiUserLine,
} from '@remixicon/react';

import type { NavGroup } from '@/components/app-shell/app-shell.types';

export type NavigationContextType = 'app' | 'org' | 'account';

export interface SidebarConfigParams {
	context: NavigationContextType;
	orgId: string | null;
	pathname: string;
	onLogout: () => void;
	isLogoutPending: boolean;
	settingsRender?: React.ReactNode;
	isAppAdmin?: boolean;
}

function isActive(pathname: string, href: string, exact = false): boolean {
	if (href === pathname) return true;
	if (!exact && href !== '/' && pathname.startsWith(href + '/')) return true;
	return false;
}

export function getSidebarNavigation(params: SidebarConfigParams): NavGroup[] {
	const { context, orgId, pathname, onLogout, isLogoutPending, settingsRender, isAppAdmin } = params;

	const footerItems: NavGroup = {
		id: 'footer',
		position: 'bottom',
		items: [
			...(settingsRender
				? [
						{
							id: 'settings-dialog',
							label: 'Settings',
							icon: RiSettings3Line,
							render: settingsRender,
						},
					]
				: []),
			{
				id: 'logout',
				label: 'Sign Out',
				icon: RiLogoutBoxLine,
				onClick: onLogout,
				disabled: isLogoutPending,
			},
		],
	};

	if (context === 'app') {
		const appItems = [
			{
				id: 'organizations',
				label: 'Organizations',
				icon: RiBuilding2Line,
				href: '/organizations',
				isActive: isActive(pathname, '/organizations'),
			},
		];

		if (isAppAdmin) {
			appItems.push(
				{
					id: 'invites',
					label: 'Invites',
					icon: RiMailLine,
					href: '/invites',
					isActive: isActive(pathname, '/invites'),
				},
				{
					id: 'users',
					label: 'Users',
					icon: RiUserLine,
					href: '/users',
					isActive: isActive(pathname, '/users'),
				},
				{
					id: 'settings',
					label: 'Settings',
					icon: RiSettings3Line,
					href: '/settings',
					isActive: isActive(pathname, '/settings'),
				},
			);
		}

		return [
			{
				id: 'main',
				position: 'top',
				items: appItems,
			},
			footerItems,
		];
	}

	if (context === 'org' && orgId) {
		return [
			{
				id: 'main',
				position: 'top',
				items: [
					{
						id: 'members',
						label: 'Members',
						icon: RiGroupLine,
						href: `/orgs/${orgId}/members`,
						isActive: isActive(pathname, `/orgs/${orgId}/members`),
					},
					{
						id: 'invites',
						label: 'Invites',
						icon: RiMailLine,
						href: `/orgs/${orgId}/invites`,
						isActive: isActive(pathname, `/orgs/${orgId}/invites`),
					},
					{
						id: 'settings',
						label: 'Settings',
						icon: RiSettings3Line,
						href: `/orgs/${orgId}/settings`,
						isActive: isActive(pathname, `/orgs/${orgId}/settings`),
					},
				],
			},
			footerItems,
		];
	}

	if (context === 'account') {
		return [
			{
				id: 'main',
				position: 'top',
				items: [
					{
						id: 'settings',
						label: 'Settings',
						icon: RiSettings3Line,
						href: '/account/settings',
						isActive: isActive(pathname, '/account/settings'),
					},
				],
			},
			footerItems,
		];
	}

	return [footerItems];
}
