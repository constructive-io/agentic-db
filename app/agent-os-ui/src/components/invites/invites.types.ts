export type InviteStatus = 'pending' | 'expired' | 'claimed';

export interface Invite {
	id: string;
	email: string;
	role: 'admin' | 'member';
	invitedBy: {
		name: string;
		initials: string;
		color: string;
	};
	status: InviteStatus;
	sentAt: string;
	expiresAt?: string;
	acceptedAt?: string;
}

export const EXPIRY_OPTIONS = [
	{ value: '1', label: '1 day' },
	{ value: '3', label: '3 days' },
	{ value: '7', label: '7 days' },
	{ value: '14', label: '14 days' },
	{ value: '30', label: '30 days' },
];

export const ROLE_OPTIONS = [
	{ value: 'member', label: 'Member', description: 'Members can create and edit projects' },
	{ value: 'admin', label: 'Admin', description: 'Admins have full access to all settings' },
];
