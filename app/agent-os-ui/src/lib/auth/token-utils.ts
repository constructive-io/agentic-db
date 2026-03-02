import type { ApiToken } from '@/store/auth-slice';

/**
 * Sign-in/sign-up result record type.
 * Matches the shape of SDK's SignInRecord / SignUpRecord which share the same fields.
 */
export interface AuthResultRecord {
	id?: string | null;
	userId?: string | null;
	accessToken?: string | null;
	accessTokenExpiresAt?: string | null;
	isVerified?: boolean | null;
	totpEnabled?: boolean | null;
}

/**
 * Convert sign-in/sign-up result to ApiToken.
 * Works with SDK types (SignInRecord, SignUpRecord).
 *
 * Returns null if required fields are missing.
 */
export function toApiToken(record: AuthResultRecord | null | undefined): ApiToken | null {
	if (!record?.accessToken || !record?.accessTokenExpiresAt || !record?.id || !record?.userId) {
		return null;
	}

	return {
		id: record.id,
		userId: record.userId,
		accessToken: record.accessToken,
		accessTokenExpiresAt: record.accessTokenExpiresAt,
	};
}
