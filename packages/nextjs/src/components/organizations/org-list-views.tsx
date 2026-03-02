'use client';

import {
	ArrowRight,
	Building2,
	Calendar,
	Crown,
	MoreHorizontal,
	Pencil,
	Shield,
	Trash2,
	User as UserIcon,
	UserCircle,
	Users,
} from 'lucide-react';

import type { OrgRole } from '@/lib/gql/hooks/schema-builder';
import { cn } from '@/lib/utils';
import { Button } from '@/components/ui/button';
import {
	DropdownMenu,
	DropdownMenuContent,
	DropdownMenuItem,
	DropdownMenuSeparator,
	DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu';
import { Skeleton } from '@/components/ui/skeleton';
import { TableCell, TableRow } from '@/components/ui/table';

type DisplayRole = OrgRole | 'personal';

function getDisplayRole(role: OrgRole, isSelfOrg?: boolean): DisplayRole {
	if (isSelfOrg) return 'personal';
	return role;
}

function getRoleIcon(displayRole: DisplayRole) {
	switch (displayRole) {
		case 'personal':
			return UserCircle;
		case 'owner':
			return Crown;
		case 'admin':
			return Shield;
		default:
			return UserIcon;
	}
}

function getRoleStyles(displayRole: DisplayRole) {
	switch (displayRole) {
		case 'personal':
			return {
				bg: 'bg-emerald-500/15',
				text: 'text-emerald-600 dark:text-emerald-400',
				label: 'Personal',
			};
		case 'owner':
			return {
				bg: 'bg-amber-500/15',
				text: 'text-amber-600 dark:text-amber-400',
				label: 'Owner',
			};
		case 'admin':
			return {
				bg: 'bg-primary/15',
				text: 'text-primary',
				label: 'Admin',
			};
		default:
			return {
				bg: 'bg-muted',
				text: 'text-muted-foreground',
				label: 'Member',
			};
	}
}

export interface OrgListItemData {
	id: string;
	name: string;
	description?: string;
	memberCount?: number;
	role: OrgRole;
	isSelfOrg?: boolean;
	settings?: { createdAt?: string | null };
}

export interface OrgCardProps {
	org: OrgListItemData;
	onClick: () => void;
	onEdit?: () => void;
	onDelete: () => void;
	index: number;
}

export function OrgCard({ org, onClick, onEdit, onDelete, index }: OrgCardProps) {
	const displayRole = getDisplayRole(org.role, org.isSelfOrg);
	const RoleIcon = getRoleIcon(displayRole);
	const roleStyles = getRoleStyles(displayRole);

	const createdAt = org.settings?.createdAt
		? new Date(org.settings.createdAt).toLocaleDateString('en-US', {
				month: 'short',
				day: 'numeric',
				year: 'numeric',
			})
		: null;

	return (
		<div
			style={{ animationDelay: `${100 + index * 50}ms` }}
			className={cn(
				'group relative flex flex-col rounded-xl border p-5 text-left',
				'animate-in fade-in-0 slide-in-from-bottom-3 fill-mode-backwards duration-300',
				'transition-all duration-200',
				'hover:-translate-y-0.5',
				'hover:[box-shadow:0_1px_2px_rgba(0,0,0,0.04),0_2px_4px_rgba(0,0,0,0.04),0_4px_8px_rgba(0,0,0,0.04),0_8px_16px_rgba(0,0,0,0.02)]',
				'dark:hover:[box-shadow:0_1px_2px_rgba(0,0,0,0.1),0_2px_4px_rgba(0,0,0,0.1),0_4px_8px_rgba(0,0,0,0.1),0_8px_16px_rgba(0,0,0,0.08)]',
				'border-border/50 bg-card hover:border-border/80',
			)}
		>
			{/* Main clickable area */}
			<button
				onClick={onClick}
				className='flex flex-1 flex-col text-left'
				data-testid='orgs-card'
				data-org-id={org.id}
			>
				{/* Role badge - top left */}
				<div className='mb-4'>
					<div className={cn('inline-flex items-center gap-1.5 rounded-full px-2.5 py-1', roleStyles.bg)}>
						<RoleIcon className={cn('h-3.5 w-3.5', roleStyles.text)} />
						<span className={cn('text-[10px] font-semibold tracking-wider uppercase', roleStyles.text)}>
							{roleStyles.label}
						</span>
					</div>
				</div>

				{/* Content */}
				<div className='mb-4 flex-1'>
					<h3 className='text-foreground group-hover:text-foreground text-sm font-semibold tracking-tight'>
						{org.name || 'Unnamed Organization'}
					</h3>
					<div className='text-muted-foreground mt-2 flex flex-wrap items-center gap-x-4 gap-y-1 text-xs'>
						<span className='flex items-center gap-1'>
							<Users className='h-3 w-3' />
							{org.memberCount ?? 0} {(org.memberCount ?? 0) === 1 ? 'member' : 'members'}
						</span>
						{createdAt && (
							<span className='flex items-center gap-1'>
								<Calendar className='h-3 w-3' />
								{createdAt}
							</span>
						)}
					</div>
				</div>

				{/* Arrow indicator */}
				<div className='border-border/30 flex items-center justify-between border-t pt-4'>
					<span className='text-muted-foreground text-[11px] font-medium'>View Organization</span>
					<ArrowRight
						className={cn(
							'text-muted-foreground/50 h-4 w-4 transition-all duration-200',
							'group-hover:text-primary group-hover:translate-x-0.5',
						)}
					/>
				</div>
			</button>

			{/* Actions menu - top right */}
			{org.role === 'owner' && (
				<div className='absolute top-3 right-3'>
					<DropdownMenu>
						<DropdownMenuTrigger asChild>
							<Button
								variant='ghost'
								size='icon'
								className={cn(
									'h-6 w-6 rounded-md opacity-0 transition-opacity',
									'group-hover:opacity-100 data-[state=open]:opacity-100',
								)}
								onClick={(e) => e.stopPropagation()}
							>
								<MoreHorizontal className='h-3.5 w-3.5' />
								<span className='sr-only'>Actions</span>
							</Button>
						</DropdownMenuTrigger>
						<DropdownMenuContent align='end' className='w-48'>
							{onEdit && (
								<>
									<DropdownMenuItem
										onClick={(e) => {
											e.preventDefault();
											e.stopPropagation();
											onEdit();
										}}
									>
										<Pencil className='mr-2 h-4 w-4' />
										Edit organization
									</DropdownMenuItem>
									<DropdownMenuSeparator />
								</>
							)}
							<DropdownMenuItem
								className='text-destructive'
								onClick={(e) => {
									e.preventDefault();
									e.stopPropagation();
									onDelete();
								}}
							>
								<Trash2 className='mr-2 h-4 w-4' />
								Delete organization
							</DropdownMenuItem>
						</DropdownMenuContent>
					</DropdownMenu>
				</div>
			)}
		</div>
	);
}

export function OrgCardSkeleton({ index }: { index: number }) {
	return (
		<div
			style={{ animationDelay: `${100 + index * 50}ms` }}
			className={cn(
				'border-border/50 bg-card relative flex flex-col rounded-xl border p-5',
				'animate-in fade-in-0 slide-in-from-bottom-3 fill-mode-backwards duration-300',
			)}
		>
			<Skeleton className='mb-4 h-6 w-16 rounded-full' />
			<div className='mb-4 flex-1 space-y-2'>
				<Skeleton className='h-4 w-32' />
				<Skeleton className='h-3 w-24' />
			</div>
			<div className='border-border/30 flex items-center justify-between border-t pt-4'>
				<Skeleton className='h-3 w-20' />
				<Skeleton className='h-4 w-4' />
			</div>
		</div>
	);
}

export interface OrgListRowProps {
	org: OrgListItemData;
	onClick: () => void;
	onEdit?: () => void;
	onDelete: () => void;
	index: number;
}

export function OrgListRow({ org, onClick, onEdit, onDelete, index }: OrgListRowProps) {
	const displayRole = getDisplayRole(org.role, org.isSelfOrg);
	const RoleIcon = getRoleIcon(displayRole);
	const roleStyles = getRoleStyles(displayRole);

	return (
		<TableRow
			style={{ animationDelay: `${index * 30}ms` }}
			className={cn(
				'hover:bg-muted/50 cursor-pointer transition-colors',
				'animate-in fade-in-0 fill-mode-backwards duration-200',
			)}
			onClick={onClick}
			data-testid='orgs-row'
			data-org-id={org.id}
		>
			<TableCell>
				<div className='flex items-center gap-3'>
					<div className='bg-muted/60 flex h-9 w-9 items-center justify-center rounded-lg'>
						<Building2 className='text-muted-foreground h-4 w-4' />
					</div>
					<div>
						<p className='text-foreground font-medium'>{org.name || 'Unnamed Organization'}</p>
						{org.description && (
							<p className='text-muted-foreground max-w-[300px] truncate text-xs'>{org.description}</p>
						)}
					</div>
				</div>
			</TableCell>
			<TableCell>
				<div className={cn('inline-flex items-center gap-1.5 rounded-full px-2 py-0.5', roleStyles.bg)}>
					<RoleIcon className={cn('h-3 w-3', roleStyles.text)} />
					<span className={cn('text-xs font-medium', roleStyles.text)}>{roleStyles.label}</span>
				</div>
			</TableCell>
			<TableCell className='text-muted-foreground text-right tabular-nums'>{org.memberCount ?? 0}</TableCell>
			<TableCell className='text-right'>
				{org.role === 'owner' && (
					<DropdownMenu>
						<DropdownMenuTrigger asChild>
							<Button variant='ghost' size='icon' className='h-8 w-8' onClick={(e) => e.stopPropagation()}>
								<MoreHorizontal className='h-4 w-4' />
								<span className='sr-only'>Actions</span>
							</Button>
						</DropdownMenuTrigger>
						<DropdownMenuContent align='end'>
							<DropdownMenuItem
								onClick={(e) => {
									e.preventDefault();
									e.stopPropagation();
									onClick();
								}}
							>
								View organization
							</DropdownMenuItem>
							{onEdit && (
								<DropdownMenuItem
									onClick={(e) => {
										e.preventDefault();
										e.stopPropagation();
										onEdit();
									}}
								>
									<Pencil className='mr-2 h-4 w-4' />
									Edit organization
								</DropdownMenuItem>
							)}
							<DropdownMenuSeparator />
							<DropdownMenuItem
								className='text-destructive'
								onClick={(e) => {
									e.preventDefault();
									e.stopPropagation();
									onDelete();
								}}
							>
								<Trash2 className='mr-2 h-4 w-4' />
								Delete organization
							</DropdownMenuItem>
						</DropdownMenuContent>
					</DropdownMenu>
				)}
			</TableCell>
		</TableRow>
	);
}

export function OrgListRowSkeleton() {
	return (
		<TableRow>
			<TableCell>
				<div className='flex items-center gap-3'>
					<Skeleton className='h-9 w-9 rounded-lg' />
					<div className='space-y-1.5'>
						<Skeleton className='h-4 w-32' />
						<Skeleton className='h-3 w-20' />
					</div>
				</div>
			</TableCell>
			<TableCell>
				<Skeleton className='h-5 w-16 rounded-full' />
			</TableCell>
			<TableCell>
				<Skeleton className='ml-auto h-4 w-6' />
			</TableCell>
			<TableCell>
				<Skeleton className='ml-auto h-8 w-8 rounded' />
			</TableCell>
		</TableRow>
	);
}
