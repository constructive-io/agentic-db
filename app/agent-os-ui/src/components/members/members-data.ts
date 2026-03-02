export type MemberStatus = 'active' | 'unverified' | 'pending_approval' | 'disabled';
export type MemberRole = 'owner' | 'admin' | 'member';

export interface Member {
	id: string;
	name: string;
	email: string;
	initials: string;
	color: string;
	role: MemberRole;
	status: MemberStatus;
	joinedAt: string;
}

export const FAKE_MEMBERS: Member[] = [
	{
		id: 'm1',
		name: 'Sarah Johnson',
		email: 'sarah.johnson@company.com',
		initials: 'SJ',
		color: 'bg-violet-500',
		role: 'owner',
		status: 'active',
		joinedAt: 'Jan 2024',
	},
	{
		id: 'm2',
		name: 'Michael Chen',
		email: 'michael.chen@company.com',
		initials: 'MC',
		color: 'bg-emerald-500',
		role: 'admin',
		status: 'active',
		joinedAt: 'Feb 2024',
	},
	{
		id: 'm3',
		name: 'Emily Rodriguez',
		email: 'emily.rodriguez@company.com',
		initials: 'ER',
		color: 'bg-amber-500',
		role: 'member',
		status: 'active',
		joinedAt: 'Mar 2024',
	},
	{
		id: 'm4',
		name: 'David Kim',
		email: 'david.kim@company.com',
		initials: 'DK',
		color: 'bg-sky-500',
		role: 'member',
		status: 'unverified',
		joinedAt: 'Apr 2024',
	},
	{
		id: 'm5',
		name: 'Lisa Anderson',
		email: 'lisa.anderson@company.com',
		initials: 'LA',
		color: 'bg-pink-500',
		role: 'admin',
		status: 'active',
		joinedAt: 'May 2024',
	},
	{
		id: 'm6',
		name: 'John Doe',
		email: 'john.doe@company.com',
		initials: 'JD',
		color: 'bg-indigo-500',
		role: 'member',
		status: 'pending_approval',
		joinedAt: 'Nov 2024',
	},
	{
		id: 'm7',
		name: 'Alex Smith',
		email: 'alex.smith@company.com',
		initials: 'AS',
		color: 'bg-slate-500',
		role: 'member',
		status: 'disabled',
		joinedAt: 'Oct 2024',
	},
];
