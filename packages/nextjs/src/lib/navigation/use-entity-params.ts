/**
 * Entity Params Hook - URL-based entity state management
 *
 * This hook provides a clean interface for reading entity IDs from URL path params
 * and validating them against available data. It serves as the source of truth
 * for entity selection, replacing Zustand-based entity state.
 *
 * Benefits:
 * - URL is shareable and bookmarkable
 * - Browser back/forward works naturally
 * - No stale persisted state issues
 * - Type-safe with validation
 *
 * Entity Hierarchy: App (root) → Org
 *
 * Routes:
 * - `/` - Root level (organizations list)
 * - `/orgs/[orgId]/*` - Organization level
 */
'use client';

import { useMemo } from 'react';
import { useParams } from 'next/navigation';

import {
	useOrganizations,
	type OrganizationWithRole,
	type OrgRole,
} from '@/lib/gql/hooks/schema-builder';

/**
 * Organization type for entity params
 * Maps from OrganizationWithRole for backward compatibility
 */
export interface Organization {
	id: string;
	name: string;
	description?: string;
	memberCount?: number;
	/** Current user's role in this organization */
	role: OrgRole;
	/** Original organization data with full details */
	_raw?: OrganizationWithRole;
}

// Re-export OrgRole for consumers
export type { OrgRole };

/**
 * Navigation level based on URL path params
 */
export type NavigationLevel = 'root' | 'org';

/**
 * Entity validation result
 */
export interface EntityValidation {
	isValid: boolean;
	redirectTo?: string;
	error?: string;
}

/**
 * Result from useEntityParams hook
 */
export interface UseEntityParamsResult {
	// Current entity IDs from URL (null if not in URL)
	orgId: string | null;

	// Validated entity data (null if ID not in URL or invalid)
	organization: Organization | null;

	// Navigation level derived from URL
	level: NavigationLevel;

	// Available entities for current context
	availableOrgs: Organization[];

	// Validation state
	validation: EntityValidation;
	isLoading: boolean;

	// Helper to check if an entity ID is valid
	isValidOrgId: (id: string) => boolean;
}

/**
 * Hook to read and validate entity IDs from URL path params.
 *
 * This is the primary source of truth for entity selection.
 * Use this hook in layouts to determine navigation context.
 *
 * @example
 * ```tsx
 * // In org layout
 * const { orgId, organization, validation, isLoading } = useEntityParams();
 *
 * if (isLoading) return <Loading />;
 * if (!validation.isValid) {
 *   router.replace(validation.redirectTo ?? '/');
 *   return null;
 * }
 *
 * return <>{children}</>;
 * ```
 */

/**
 * Transform OrganizationWithRole to the local Organization type
 */
function transformOrganization(org: OrganizationWithRole): Organization {
	return {
		id: org.id,
		name: org.displayName || org.username || 'Unnamed Organization',
		description: org.settings?.legalName || undefined,
		memberCount: org.memberCount,
		role: org.role,
		_raw: org,
	};
}

export function useEntityParams(): UseEntityParamsResult {
	const params = useParams();

	// Extract entity IDs from URL path params
	const orgId = (params?.orgId as string) ?? null;

	// Get organizations from GraphQL
	const { organizations: rawOrganizations, isLoading: isOrgsLoading } = useOrganizations();

	// Transform organizations to local format
	const availableOrgs = useMemo(() => rawOrganizations.map(transformOrganization), [rawOrganizations]);

	// Validate organization
	const organization = useMemo(() => {
		if (!orgId) return null;
		return availableOrgs.find((org) => org.id === orgId) ?? null;
	}, [orgId, availableOrgs]);


	// Determine navigation level from URL
	const level = useMemo((): NavigationLevel => {
		if (orgId) return 'org';
		return 'root';
	}, [orgId]);

	// Validation helper functions
	const isValidOrgId = useMemo(() => (id: string) => availableOrgs.some((org) => org.id === id), [availableOrgs]);

	// Combined loading state
	const isLoading = isOrgsLoading;

	// Compute validation result
	const validation = useMemo((): EntityValidation => {
		// If no entity IDs in URL, we're at root level - always valid
		if (!orgId) {
			return { isValid: true };
		}

		// Validate org route
		if (orgId) {
			// Wait for orgs to load before validating
			if (!isOrgsLoading && !organization) {
				return {
					isValid: false,
					redirectTo: '/',
					error: `Organization "${orgId}" not found`,
				};
			}
			return { isValid: true };
		}

		return { isValid: true };
	}, [orgId, organization, isOrgsLoading]);

	return {
		// Entity IDs from URL
		orgId,

		// Validated entities
		organization,

		// Navigation level
		level,

		// Available entities
		availableOrgs,

		// Validation
		validation,
		isLoading,

		// Helpers
		isValidOrgId,
	};
}
