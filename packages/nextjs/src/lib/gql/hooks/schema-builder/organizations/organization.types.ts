/**
 * Organization Types
 *
 * Type definitions for organization-related data structures.
 * Organizations are implemented as Users with type=2 (Organization role type).
 */

import { ROLE_TYPE } from '@/lib/constants/role-types';

export { ROLE_TYPE };

/**
 * User's role within an organization
 * Derived from membership flags: isOwner, isAdmin
 */
export type OrgRole = 'owner' | 'admin' | 'member';

/**
 * Organization settings from organization_settings table
 */
export interface OrganizationSettings {
	id: string;
	legalName: string | null;
	addressLineOne: string | null;
	addressLineTwo: string | null;
	city: string | null;
	state: string | null;
	createdAt: string | null;
	updatedAt: string | null;
}

/**
 * Organization entity (User with type=1)
 */
export interface Organization {
	id: string;
	displayName: string | null;
	username: string | null;
	profilePicture: unknown | null;
	settings: OrganizationSettings | null;
	memberCount: number;
}

/**
 * Organization with current user's membership details
 * Used in list views to show role badges
 */
export interface OrganizationWithRole extends Organization {
	/** Current user's role in this organization */
	role: OrgRole;
	/** Membership ID for the current user */
	membershipId: string;
	/** When the current user joined */
	memberSince: string | null;
	/** True if this is the user's self-org (entity_id === actor_id, type=0) */
	isSelfOrg: boolean;
}

/**
 * Derive user's role from membership flags
 */
export function deriveOrgRole(membership: {
	isOwner: boolean;
	isAdmin: boolean;
}): OrgRole {
	if (membership.isOwner) return 'owner';
	if (membership.isAdmin) return 'admin';
	return 'member';
}

/**
 * Role display configuration for UI
 */
export const ORG_ROLE_CONFIG = {
	owner: {
		label: 'Owner',
		variant: 'warning' as const,
		icon: 'crown',
	},
	admin: {
		label: 'Admin',
		variant: 'default' as const,
		icon: 'shield',
	},
	member: {
		label: 'Member',
		variant: 'secondary' as const,
		icon: 'user',
	},
} as const;
