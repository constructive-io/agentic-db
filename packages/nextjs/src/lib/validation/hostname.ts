/**
 * Hostname and subdomain validation utilities
 *
 * Based on backend PostgreSQL hostname DOMAIN type:
 * CREATE DOMAIN hostname AS text CHECK (
 *   VALUE ~ '^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]*[a-zA-Z0-9])\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\-]*[A-Za-z0-9])$'
 * );
 */

/**
 * Full hostname regex (allows multi-level like sub.domain.example.com)
 * Matches RFC 1123 hostnames
 */
export const HOSTNAME_REGEX =
	/^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9-]*[a-zA-Z0-9])\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9-]*[A-Za-z0-9])$/;

/**
 * Single-level subdomain regex (no dots allowed)
 * Must start and end with alphanumeric, can contain hyphens in between
 * Examples: "api", "my-api", "test123", "a", "a-b-c"
 */
export const SUBDOMAIN_REGEX = /^[a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?$/;

/**
 * Validates a full hostname (can include dots for multi-level domains)
 */
export function isValidHostname(value: string): boolean {
	if (!value || value.length === 0) return false;
	// Max length for a hostname is 253 characters
	if (value.length > 253) return false;
	return HOSTNAME_REGEX.test(value);
}

/**
 * Validates a single-level subdomain (no dots)
 * Returns true for empty string (empty subdomain triggers auto-generation)
 */
export function isValidSubdomain(value: string): boolean {
	// Empty is valid (triggers auto-generation in some contexts)
	if (!value || value.length === 0) return true;
	// Each label max 63 chars per RFC 1123
	if (value.length > 63) return false;
	return SUBDOMAIN_REGEX.test(value);
}

/**
 * Gets a user-friendly error message for invalid subdomain
 * Returns null if subdomain is valid
 */
export function getSubdomainError(value: string): string | null {
	if (!value || value.length === 0) return null;

	if (value.length > 63) {
		return 'Subdomain must be 63 characters or less';
	}

	if (value.startsWith('-')) {
		return 'Subdomain cannot start with a hyphen';
	}

	if (value.endsWith('-')) {
		return 'Subdomain cannot end with a hyphen';
	}

	if (value.includes('.')) {
		return 'Subdomain cannot contain dots';
	}

	if (value.includes('_')) {
		return 'Subdomain cannot contain underscores';
	}

	if (/\s/.test(value)) {
		return 'Subdomain cannot contain spaces';
	}

	if (!/^[a-zA-Z0-9-]+$/.test(value)) {
		return 'Subdomain can only contain letters, numbers, and hyphens';
	}

	if (!SUBDOMAIN_REGEX.test(value)) {
		return 'Invalid subdomain format';
	}

	return null;
}

/**
 * Gets a user-friendly error message for invalid hostname
 * Returns null if hostname is valid
 */
export function getHostnameError(value: string): string | null {
	if (!value || value.length === 0) {
		return 'Hostname is required';
	}

	if (value.length > 253) {
		return 'Hostname must be 253 characters or less';
	}

	if (/\s/.test(value)) {
		return 'Hostname cannot contain spaces';
	}

	if (value.includes('_')) {
		return 'Hostname cannot contain underscores';
	}

	if (!HOSTNAME_REGEX.test(value)) {
		return 'Invalid hostname format';
	}

	return null;
}
