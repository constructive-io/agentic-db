/**
 * Hook for fetching app and membership permissions
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 */
import { useQuery } from '@tanstack/react-query';

import {
	fetchAppPermissionsQuery,
	fetchOrgPermissionsQuery,
} from '@sdk/api';

export interface PermissionNode {
	bitnum: number | null;
	bitstr: string | null;
	description: string | null;
	id: string;
	name: string;
}

export type AppPermission = PermissionNode;
export type MembershipPermission = PermissionNode;

export const permissionsQueryKeys = {
	all: ['permissions'] as const,
};

export interface UsePermissionsOptions {
	enabled?: boolean;
}

export function usePermissions(options: UsePermissionsOptions = {}) {
	const isEnabled = options.enabled !== false;

	return useQuery<{ appPermissions: AppPermission[]; membershipPermissions: MembershipPermission[] }>({
		queryKey: permissionsQueryKeys.all,
		queryFn: async () => {
			// Fetch both permission types in parallel using SDK fetch functions
			const [appResult, orgResult] = await Promise.all([
				fetchAppPermissionsQuery({
					selection: {
						fields: {
							id: true,
							name: true,
							bitnum: true,
							bitstr: true,
							description: true,
						},
						orderBy: ['NAME_ASC'],
					},
				}),
				fetchOrgPermissionsQuery({
					selection: {
						fields: {
							id: true,
							name: true,
							bitnum: true,
							bitstr: true,
							description: true,
						},
						orderBy: ['NAME_ASC'],
					},
				}),
			]);

			const appPermissions: AppPermission[] = (appResult.appPermissions?.nodes ?? []).map((node) => ({
				id: node.id ?? '',
				name: node.name ?? '',
				bitnum: node.bitnum ?? null,
				bitstr: node.bitstr ?? null,
				description: node.description ?? null,
			}));

			const membershipPermissions: MembershipPermission[] = (orgResult.orgPermissions?.nodes ?? []).map((node) => ({
				id: node.id ?? '',
				name: node.name ?? '',
				bitnum: node.bitnum ?? null,
				bitstr: node.bitstr ?? null,
				description: node.description ?? null,
			}));

			return {
				appPermissions,
				membershipPermissions,
			};
		},
		enabled: isEnabled,
		staleTime: 5 * 60 * 1000,
		refetchOnMount: isEnabled,
		refetchOnWindowFocus: false,
		refetchOnReconnect: false,
	});
}
