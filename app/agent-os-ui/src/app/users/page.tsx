'use client';

import { useMemo, useState } from 'react';
import { AlertCircle, Ban, Crown, Filter, MoreHorizontal, Search, Shield, UserCheck, Users, UserX } from 'lucide-react';

import { useAppUsers, useUpdateAppUser, type AppUser } from '@/lib/gql/hooks/schema-builder/app';
import { cn } from '@/lib/utils';
import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import {
	DropdownMenu,
	DropdownMenuContent,
	DropdownMenuItem,
	DropdownMenuSeparator,
	DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu';
import { InputGroup, InputGroupAddon, InputGroupInput } from '@/components/ui/input-group';
import { Skeleton } from '@/components/ui/skeleton';
import { showErrorToast, showSuccessToast } from '@/components/ui/toast';
import { getRoleFromFlags, RoleBadge } from '@/components/members/role-badge';
import { PageHeaderWithIcon } from '@/components/shared/page-header-with-icon';

function UserStatusBadge({ user }: { user: AppUser }) {
	if (user.isBanned) {
		return (
			<Badge variant='destructive' className='gap-1'>
				<Ban className='h-3 w-3' />
				Banned
			</Badge>
		);
	}
	if (user.isDisabled) {
		return (
			<Badge variant='secondary' className='gap-1'>
				<UserX className='h-3 w-3' />
				Disabled
			</Badge>
		);
	}
	if (!user.isActive) {
		return (
			<Badge variant='outline' className='gap-1'>
				<UserX className='h-3 w-3' />
				Inactive
			</Badge>
		);
	}
	return (
		<Badge variant='default' className='gap-1 bg-emerald-500/15 text-emerald-600 dark:text-emerald-400'>
			<UserCheck className='h-3 w-3' />
			Active
		</Badge>
	);
}

function UserRoleBadge({ user }: { user: AppUser }) {
	return <RoleBadge role={getRoleFromFlags(user.isOwner, user.isAdmin)} />;
}

function UsersTableSkeleton() {
	return (
		<div className='space-y-3'>
			{[...Array(5)].map((_, i) => (
				<div
					key={i}
					style={{ animationDelay: `${i * 50}ms` }}
					className={cn(
						'border-border/50 bg-card flex items-center gap-4 rounded-xl border p-4',
						'animate-in fade-in-0 slide-in-from-bottom-2 fill-mode-backwards duration-300',
					)}
				>
					<Skeleton className='h-10 w-10 rounded-full' />
					<div className='flex-1 space-y-2'>
						<Skeleton className='h-4 w-32' />
						<Skeleton className='h-3 w-24' />
					</div>
					<Skeleton className='h-5 w-16 rounded-full' />
					<Skeleton className='h-5 w-16 rounded-full' />
					<Skeleton className='h-8 w-8 rounded-lg' />
				</div>
			))}
		</div>
	);
}

function UserRow({
	user,
	onToggleAdmin,
	onToggleActive,
	isUpdating,
	index,
}: {
	user: AppUser;
	onToggleAdmin: () => void;
	onToggleActive: () => void;
	isUpdating: boolean;
	index: number;
}) {
	return (
		<div
			style={{ animationDelay: `${index * 50}ms` }}
			className={cn(
				'group flex items-center gap-4 rounded-xl border p-4',
				'animate-in fade-in-0 slide-in-from-bottom-2 fill-mode-backwards duration-300',
				'transition-all duration-200',
				'hover:-translate-y-0.5',
				'hover:[box-shadow:0_1px_2px_rgba(0,0,0,0.04),0_2px_4px_rgba(0,0,0,0.04),0_4px_8px_rgba(0,0,0,0.04),0_8px_16px_rgba(0,0,0,0.02)]',
				'dark:hover:[box-shadow:0_1px_2px_rgba(0,0,0,0.1),0_2px_4px_rgba(0,0,0,0.1),0_4px_8px_rgba(0,0,0,0.1),0_8px_16px_rgba(0,0,0,0.08)]',
				'border-border/50 bg-card hover:border-border/80',
			)}
		>
			{/* Avatar */}
			<div className='relative'>
				<div
					className={cn(
						'flex h-10 w-10 items-center justify-center rounded-full transition-all duration-200',
						user.isOwner
							? 'bg-amber-500/15 text-amber-600 dark:text-amber-400'
							: user.isAdmin
								? 'bg-primary/15 text-primary'
								: 'bg-muted text-muted-foreground',
					)}
				>
					{user.isOwner ? (
						<Crown className='h-4 w-4' />
					) : (
						<span className='text-sm font-medium'>{user.actor?.displayName?.charAt(0)?.toUpperCase() || '?'}</span>
					)}
				</div>
				{/* Online indicator dot */}
				{user.isActive && !user.isBanned && (
					<div className='border-card absolute -right-0.5 -bottom-0.5 h-3 w-3 rounded-full border-2 bg-emerald-500' />
				)}
			</div>

			{/* User info */}
			<div className='min-w-0 flex-1'>
				<p className='text-foreground truncate text-sm font-semibold tracking-tight'>
					{user.actor?.displayName || 'Unknown User'}
				</p>
				<p className='text-muted-foreground truncate text-xs'>@{user.actor?.username || 'unknown'}</p>
			</div>

			{/* Role badge */}
			<UserRoleBadge user={user} />

			{/* Status badge */}
			<UserStatusBadge user={user} />

			{/* Actions */}
			<DropdownMenu>
				<DropdownMenuTrigger asChild>
					<Button
						variant='ghost'
						size='icon'
						className='h-8 w-8 opacity-0 transition-opacity group-hover:opacity-100 data-[state=open]:opacity-100'
						disabled={isUpdating}
					>
						<MoreHorizontal className='h-4 w-4' />
						<span className='sr-only'>Actions</span>
					</Button>
				</DropdownMenuTrigger>
				<DropdownMenuContent align='end' className='w-48'>
					{!user.isOwner && (
						<>
							<DropdownMenuItem onClick={onToggleAdmin}>
								<Shield className='mr-2 h-4 w-4' />
								{user.isAdmin ? 'Remove Admin' : 'Make Admin'}
							</DropdownMenuItem>
							<DropdownMenuSeparator />
						</>
					)}
					<DropdownMenuItem onClick={onToggleActive}>
						{user.isActive ? (
							<>
								<UserX className='mr-2 h-4 w-4' />
								Deactivate User
							</>
						) : (
							<>
								<UserCheck className='mr-2 h-4 w-4' />
								Activate User
							</>
						)}
					</DropdownMenuItem>
				</DropdownMenuContent>
			</DropdownMenu>
		</div>
	);
}

export default function AppUsersPage() {
	const [search, setSearch] = useState('');
	const [statusFilter, setStatusFilter] = useState<'all' | 'active' | 'inactive' | 'banned'>('all');

	const { users, totalCount, isLoading, error, refetch } = useAppUsers({
		filter:
			statusFilter === 'all'
				? undefined
				: statusFilter === 'active'
					? { isActive: true, isBanned: false }
					: statusFilter === 'inactive'
						? { isActive: false }
						: { isBanned: true },
	});

	const { updateUser, isUpdating } = useUpdateAppUser();

	const filteredUsers = useMemo(() => {
		if (!search.trim()) return users;
		const searchLower = search.toLowerCase();
		return users.filter(
			(user) =>
				user.actor?.displayName?.toLowerCase().includes(searchLower) ||
				user.actor?.username?.toLowerCase().includes(searchLower),
		);
	}, [users, search]);

	const handleToggleAdmin = async (user: AppUser) => {
		const newIsAdmin = !user.isAdmin;
		const displayName = user.actor?.displayName || 'User';
		try {
			await updateUser({
				id: user.id,
				patch: { isAdmin: newIsAdmin },
			});
			refetch();
			showSuccessToast({
				message: newIsAdmin ? 'Admin granted' : 'Admin revoked',
				description: `${displayName} is ${newIsAdmin ? 'now an admin' : 'no longer an admin'}.`,
			});
		} catch (err) {
			showErrorToast({
				message: 'Failed to update role',
				description: err instanceof Error ? err.message : 'An unexpected error occurred.',
			});
		}
	};

	const handleToggleActive = async (user: AppUser) => {
		const newIsActive = !user.isActive;
		const displayName = user.actor?.displayName || 'User';
		try {
			await updateUser({
				id: user.id,
				patch: { isActive: newIsActive },
			});
			refetch();
			showSuccessToast({
				message: newIsActive ? 'User activated' : 'User deactivated',
				description: `${displayName} has been ${newIsActive ? 'activated' : 'deactivated'}.`,
			});
		} catch (err) {
			showErrorToast({
				message: newIsActive ? 'Failed to activate user' : 'Failed to deactivate user',
				description: err instanceof Error ? err.message : 'An unexpected error occurred.',
			});
		}
	};

	const filterLabels = {
		all: 'All Users',
		active: 'Active',
		inactive: 'Inactive',
		banned: 'Banned',
	};

	if (error) {
		return (
			<div className='h-full overflow-y-auto'>
				<div className='mx-auto max-w-6xl px-6 py-8 lg:px-8 lg:py-10'>
					<div
						className={cn(
							'border-destructive/30 bg-destructive/5 flex items-start gap-4 rounded-xl border p-5',
							'animate-in fade-in-0 slide-in-from-bottom-4 duration-500',
						)}
					>
						<div className='bg-destructive/15 flex h-10 w-10 shrink-0 items-center justify-center rounded-lg'>
							<AlertCircle className='text-destructive h-5 w-5' />
						</div>
						<div>
							<h3 className='text-destructive text-sm font-semibold'>Failed to load users</h3>
							<p className='text-muted-foreground mt-1 text-sm'>{error.message}</p>
						</div>
					</div>
				</div>
			</div>
		);
	}

	return (
		<div className='h-full overflow-y-auto'>
			<div className='mx-auto max-w-6xl px-6 py-8 lg:px-8 lg:py-10'>
				<PageHeaderWithIcon
					title='App Users'
					description='Manage platform users, roles, and permissions across your application'
					icon={Users}
				/>

				{/* Filters section */}
				<section
					className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards mb-6 duration-500'
					style={{ animationDelay: '100ms' }}
				>
					<div className='flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between'>
						{/* Search */}
						<InputGroup className='max-w-sm flex-1'>
							<InputGroupAddon>
								<Search />
							</InputGroupAddon>
							<InputGroupInput
								placeholder='Search users...'
								value={search}
								onChange={(e) => setSearch(e.target.value)}
							/>
						</InputGroup>

						{/* Filter + count */}
						<div className='flex items-center gap-3'>
							{!isLoading && (
								<span className='text-muted-foreground text-sm'>
									{totalCount} {totalCount === 1 ? 'user' : 'users'}
								</span>
							)}
							<DropdownMenu>
								<DropdownMenuTrigger asChild>
									<Button variant='outline' size='sm' className='gap-2'>
										<Filter className='h-4 w-4' />
										{filterLabels[statusFilter]}
									</Button>
								</DropdownMenuTrigger>
								<DropdownMenuContent align='end'>
									<DropdownMenuItem onClick={() => setStatusFilter('all')}>All Users</DropdownMenuItem>
									<DropdownMenuItem onClick={() => setStatusFilter('active')}>Active</DropdownMenuItem>
									<DropdownMenuItem onClick={() => setStatusFilter('inactive')}>Inactive</DropdownMenuItem>
									<DropdownMenuItem onClick={() => setStatusFilter('banned')}>Banned</DropdownMenuItem>
								</DropdownMenuContent>
							</DropdownMenu>
						</div>
					</div>
				</section>

				{/* Users list */}
				<section
					className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
					style={{ animationDelay: '150ms' }}
				>
					{isLoading ? (
						<UsersTableSkeleton />
					) : filteredUsers.length === 0 ? (
						<div
							className='border-border/50 bg-muted/20 flex flex-col items-center justify-center rounded-xl border
								border-dashed py-16'
						>
							<div className='bg-muted/50 mb-4 flex h-12 w-12 items-center justify-center rounded-full'>
								<Users className='text-muted-foreground h-6 w-6' />
							</div>
							<p className='text-foreground text-sm font-medium'>No users found</p>
							<p className='text-muted-foreground mt-1 text-xs'>
								{search ? 'Try adjusting your search query' : 'No users match the current filter'}
							</p>
						</div>
					) : (
						<div className='space-y-3'>
							{filteredUsers.map((user, index) => (
								<UserRow
									key={user.id}
									user={user}
									onToggleAdmin={() => handleToggleAdmin(user)}
									onToggleActive={() => handleToggleActive(user)}
									isUpdating={isUpdating}
									index={index}
								/>
							))}
						</div>
					)}
				</section>

				{/* Bottom spacing */}
				<div className='h-10' />
			</div>
		</div>
	);
}
