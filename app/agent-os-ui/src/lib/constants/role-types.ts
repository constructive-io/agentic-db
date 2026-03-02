export const ROLE_TYPE = {
	USER: 1,
	ORGANIZATION: 2,
} as const;

export type RoleType = (typeof ROLE_TYPE)[keyof typeof ROLE_TYPE];
