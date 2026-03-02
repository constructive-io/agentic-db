export type NavigationContextType = 'app' | 'org' | 'account';

export interface Organization {
	id: string;
	name: string;
	memberCount: number;
	role: 'owner' | 'admin' | 'member';
	createdAt: string;
}

export interface Project {
	id: string;
	name: string;
	orgId: string;
}

export const FAKE_ORGANIZATIONS: Organization[] = [
	{ id: 'org-1', name: 'Acme Corporation', memberCount: 24, role: 'owner', createdAt: 'Jan 14, 2024' },
	{ id: 'org-2', name: 'Tech Startup Inc', memberCount: 12, role: 'admin', createdAt: 'Mar 21, 2024' },
	{ id: 'org-3', name: 'Design Agency', memberCount: 8, role: 'member', createdAt: 'Jun 9, 2024' },
];

export const FAKE_PROJECTS: Project[] = [
	{ id: 'proj-1', name: 'Main App', orgId: 'org-1' },
	{ id: 'proj-2', name: 'Marketing Site', orgId: 'org-1' },
	{ id: 'proj-3', name: 'API Gateway', orgId: 'org-1' },
	{ id: 'proj-4', name: 'Mobile App', orgId: 'org-2' },
	{ id: 'proj-5', name: 'Dashboard', orgId: 'org-2' },
	{ id: 'proj-6', name: 'Portfolio', orgId: 'org-3' },
	{ id: 'proj-7', name: 'Client Portal', orgId: 'org-3' },
];

