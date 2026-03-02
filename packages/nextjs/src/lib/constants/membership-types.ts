export const MEMBERSHIP_TYPES = {
	APP: 1,
	ORGANIZATION: 2,
	GROUP: 3,
} as const;

export type MembershipType = (typeof MEMBERSHIP_TYPES)[keyof typeof MEMBERSHIP_TYPES];
