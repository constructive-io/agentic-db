'use client';

import { useEffect, useState } from 'react';
import type { Route } from 'next';
import { useRouter } from 'next/navigation';
import { Button } from '@/components/ui/button';
import { InputGroup, InputGroupAddon, InputGroupInput } from '@/components/ui/input-group';
import { useCardStack } from '@/components/ui/stack';
import { Table, TableBody, TableHead, TableHeader, TableRow } from '@/components/ui/table';
import { Building2, LayoutGrid, List, Plus, Search } from 'lucide-react';

import { useAuthContext } from '@/lib/auth/auth-context';
import { useOrganizations, type OrganizationWithRole } from '@/lib/gql/hooks/schema-builder';
import { useEntityParams } from '@/lib/navigation';
import { LoginScreen } from '@/components/auth/screens/login-screen';
import {
	DeleteOrganizationDialog,
	OrgCard,
	OrgCardSkeleton,
	OrgListRow,
	OrgListRowSkeleton,
} from '@/components/organizations';
import { CreateOrganizationCard } from '@/components/organizations/create-organization-card';
import { EditOrganizationCard } from '@/components/organizations/edit-organization-card';
import { PageHeaderWithIcon } from '@/components/shared/page-header-with-icon';

/**
 * Root page - entry point for app-level (schema-builder) authentication.
 */
export default function HomePage() {
	const [mounted, setMounted] = useState(false);
	const { isAuthenticated, isLoading: isAuthLoading, login } = useAuthContext();

	// Prevent hydration mismatch by only rendering auth-dependent content after mount
	useEffect(() => {
		setMounted(true);
	}, []);
	const router = useRouter();
	const stack = useCardStack();
	const [deleteDialogOpen, setDeleteDialogOpen] = useState(false);
	const [selectedOrg, setSelectedOrg] = useState<OrganizationWithRole | null>(null);
	const [searchValue, setSearchValue] = useState('');
	const [viewMode, setViewMode] = useState<'grid' | 'list'>('grid');

	const { availableOrgs: organizations, isLoading: isOrgsLoading } = useEntityParams();
	const { refetch: refetchOrganizations } = useOrganizations();

	// Show loading spinner until mounted and auth is ready
	if (!mounted || isAuthLoading) {
		return (
			<div className='bg-background flex h-dvh w-dvw items-center justify-center'>
				<div className='flex flex-col items-center gap-4'>
					<div className='border-primary/20 h-10 w-10 animate-spin rounded-full border-2 border-t-transparent' />
				</div>
			</div>
		);
	}

	if (!isAuthenticated) {
		return <LoginScreen onLogin={login} />;
	}

	const handleEditClick = (org: (typeof organizations)[0]) => {
		const rawOrg = org._raw as OrganizationWithRole;
		stack.push({
			id: `org-edit-${org.id}`,
			title: 'Edit Organization',
			description: "Update the organization's name, username, and other details.",
			Component: EditOrganizationCard,
			props: {
				organization: rawOrg,
				onSuccess: () => refetchOrganizations(),
			},
			width: 480,
		});
	};

	const handleDeleteClick = (org: (typeof organizations)[0]) => {
		setSelectedOrg(org._raw as OrganizationWithRole);
		setDeleteDialogOpen(true);
	};

	const filteredOrganizations = organizations.filter((org) =>
		org.name.toLowerCase().includes(searchValue.toLowerCase()),
	);

	const handleRowClick = (orgId: string) => {
		router.push(`/orgs/${orgId}/members` as string as Route);
	};

	return (
		<div className='h-full overflow-y-auto'>
			<div className='mx-auto max-w-6xl px-6 py-8 lg:px-8 lg:py-10'>
				<PageHeaderWithIcon
					title='Organizations'
					description='Manage your organizations and team memberships'
					icon={Building2}
					actions={
						<Button
							className='gap-2'
							onClick={() => {
								stack.push({
									id: 'org-create',
									title: 'Create Organization',
									description: 'Create a new organization to collaborate with your team.',
									Component: CreateOrganizationCard,
									props: {
										onSuccess: () => refetchOrganizations(),
									},
									width: 480,
								});
							}}
							data-testid='orgs-create-button'
						>
							<Plus className='h-4 w-4' />
							New Organization
						</Button>
					}
				/>

				{/* Filters section */}
				<section
					className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards mb-6 duration-500'
					style={{ animationDelay: '100ms' }}
				>
					<div className='flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between'>
						{/* Search and count */}
						<div className='flex items-center gap-3'>
							<InputGroup className='max-w-sm flex-1'>
								<InputGroupAddon>
									<Search />
								</InputGroupAddon>
								<InputGroupInput
									placeholder='Search organizations...'
									value={searchValue}
									onChange={(e) => setSearchValue(e.target.value)}
									data-testid='orgs-search-input'
								/>
							</InputGroup>
							{!isOrgsLoading && (
								<span className='text-muted-foreground text-sm'>
									{filteredOrganizations.length} {filteredOrganizations.length === 1 ? 'organization' : 'organizations'}
								</span>
							)}
						</div>

						{/* View mode toggle */}
						<div className='border-border/50 flex rounded-lg border p-1'>
							<Button
								variant={viewMode === 'grid' ? 'secondary' : 'ghost'}
								size='sm'
								className='gap-1.5 rounded-md'
								onClick={() => setViewMode('grid')}
								data-testid='orgs-view-grid'
							>
								<LayoutGrid className='h-4 w-4' />
								<span className='hidden sm:inline'>Grid</span>
							</Button>
							<Button
								variant={viewMode === 'list' ? 'secondary' : 'ghost'}
								size='sm'
								className='gap-1.5 rounded-md'
								onClick={() => setViewMode('list')}
								data-testid='orgs-view-list'
							>
								<List className='h-4 w-4' />
								<span className='hidden sm:inline'>List</span>
							</Button>
						</div>
					</div>
				</section>

				{/* Organizations content */}
				<section
					className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
					style={{ animationDelay: '150ms' }}
				>
					{isOrgsLoading ? (
						viewMode === 'grid' ? (
							<div className='grid gap-4 sm:grid-cols-2 lg:grid-cols-3'>
								{Array.from({ length: 6 }).map((_, index) => (
									<OrgCardSkeleton key={index} index={index} />
								))}
							</div>
						) : (
							<div className='border-border/50 bg-card rounded-xl border'>
								<Table>
									<TableHeader>
										<TableRow>
											<TableHead>Organization</TableHead>
											<TableHead className='w-[100px]'>Role</TableHead>
											<TableHead className='w-[90px] text-right'>Members</TableHead>
											<TableHead className='w-[60px] text-right'>Actions</TableHead>
										</TableRow>
									</TableHeader>
									<TableBody>
										{Array.from({ length: 5 }).map((_, i) => (
											<OrgListRowSkeleton key={i} />
										))}
									</TableBody>
								</Table>
							</div>
						)
					) : filteredOrganizations.length === 0 ? (
						<div
							className='border-border/50 bg-muted/20 flex flex-col items-center justify-center rounded-xl border
								border-dashed py-16'
						>
							<div className='bg-muted/50 mb-4 flex h-14 w-14 items-center justify-center rounded-full'>
								<Building2 className='text-muted-foreground h-7 w-7' />
							</div>
							<h3 className='text-foreground text-base font-semibold tracking-tight'>
								{searchValue ? 'No organizations found' : 'No Organizations Yet'}
							</h3>
							<p className='text-muted-foreground mt-2 max-w-sm text-center text-sm'>
								{searchValue
									? 'Try adjusting your search query'
									: 'Create your first organization to start managing projects and databases.'}
							</p>
							{!searchValue && (
								<Button
									className='mt-6 gap-2'
									onClick={() => {
										stack.push({
											id: 'org-create',
											title: 'Create Organization',
											description: 'Create a new organization to collaborate with your team.',
											Component: CreateOrganizationCard,
											props: {
												onSuccess: () => refetchOrganizations(),
											},
											width: 480,
										});
									}}
									data-testid='orgs-empty-create-button'
								>
									<Plus className='h-4 w-4' />
									Create Organization
								</Button>
							)}
						</div>
					) : viewMode === 'grid' ? (
						<div className='grid gap-4 sm:grid-cols-2 lg:grid-cols-3'>
							{filteredOrganizations.map((org, index) => (
								<OrgCard
									key={org.id}
									org={{
										id: org.id,
										name: org.name,
										description: org.description,
										memberCount: org.memberCount,
										role: org.role,
										isSelfOrg: org._raw?.isSelfOrg,
										settings: org._raw?.settings ?? undefined,
									}}
									onClick={() => handleRowClick(org.id)}
									onEdit={org.role === 'owner' ? () => handleEditClick(org) : undefined}
									onDelete={() => handleDeleteClick(org)}
									index={index}
								/>
							))}
						</div>
					) : (
						<div className='border-border/50 bg-card overflow-hidden rounded-xl border'>
							<Table>
								<TableHeader>
									<TableRow className='hover:bg-transparent'>
										<TableHead>Organization</TableHead>
										<TableHead className='w-[100px]'>Role</TableHead>
										<TableHead className='w-[90px] text-right'>Members</TableHead>
										<TableHead className='w-[60px] text-right'>Actions</TableHead>
									</TableRow>
								</TableHeader>
								<TableBody>
									{filteredOrganizations.map((org, index) => (
										<OrgListRow
											key={org.id}
											org={{
												id: org.id,
												name: org.name,
												description: org.description,
												memberCount: org.memberCount,
												role: org.role,
												isSelfOrg: org._raw?.isSelfOrg,
											}}
											onClick={() => handleRowClick(org.id)}
											onEdit={org.role === 'owner' ? () => handleEditClick(org) : undefined}
											onDelete={() => handleDeleteClick(org)}
											index={index}
										/>
									))}
								</TableBody>
							</Table>
						</div>
					)}
				</section>

				{/* Bottom spacing */}
				<div className='h-10' />
			</div>

			{/* Delete Organization Dialog */}
			<DeleteOrganizationDialog
				open={deleteDialogOpen}
				onOpenChange={setDeleteDialogOpen}
				organization={selectedOrg}
				onSuccess={() => refetchOrganizations()}
			/>
		</div>
	);
}
