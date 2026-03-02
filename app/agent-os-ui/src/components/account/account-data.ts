export type UserRole = 'Admin' | 'Member' | 'Owner';

export interface UserProfile {
	id: string;
	displayName: string;
	username: string;
	email: string;
	bio: string;
	role: UserRole;
	initials: string;
	avatarColor: string;
}

export interface Session {
	id: string;
	device: string;
	browser: string;
	location: string;
	lastActive: string;
	isCurrent: boolean;
}

export const FAKE_USER_PROFILE: UserProfile = {
	id: 'u1',
	displayName: 'John Doe',
	username: 'johndoe',
	email: 'john.doe@example.com',
	bio: 'Software developer passionate about building great products.',
	role: 'Admin',
	initials: 'JD',
	avatarColor: 'bg-slate-400',
};

export const FAKE_SESSIONS: Session[] = [
	{
		id: 's1',
		device: 'MacBook Pro',
		browser: 'Chrome',
		location: 'San Francisco, CA',
		lastActive: 'Last active now',
		isCurrent: true,
	},
	{
		id: 's2',
		device: 'iPhone 15',
		browser: 'Safari',
		location: 'San Francisco, CA',
		lastActive: '2 hours ago',
		isCurrent: false,
	},
	{
		id: 's3',
		device: 'Windows PC',
		browser: 'Edge',
		location: 'New York, NY',
		lastActive: '3 days ago',
		isCurrent: false,
	},
];
