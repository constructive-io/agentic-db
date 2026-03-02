'use client';

import * as React from 'react';
import Link from 'next/link';
import type { Route } from 'next';
import { MoreHorizontalIcon, ExternalLinkIcon, Trash2Icon, CrownIcon, ShieldIcon, UserIcon } from 'lucide-react';

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
import type { OrgRole } from '@/lib/gql/hooks/schema-builder';

/**
 * Role configuration with distinct visual treatments
 */
const ROLE_CONFIG: Record<OrgRole, { label: string; icon: React.ElementType; className: string }> = {
	owner: {
		label: 'Owner',
		icon: CrownIcon,
		className: 'bg-amber-500/10 text-amber-600 dark:bg-amber-500/15 dark:text-amber-400 border-amber-500/20',
	},
	admin: {
		label: 'Admin',
		icon: ShieldIcon,
		className: 'bg-blue-500/10 text-blue-600 dark:bg-blue-500/15 dark:text-blue-400 border-blue-500/20',
	},
	member: {
		label: 'Member',
		icon: UserIcon,
		className: 'bg-muted text-muted-foreground border-border/60',
	},
};

export interface OrganizationCardProps {
	id: string;
	name: string;
	description?: string;
	memberCount?: number;
	role: OrgRole;
	href: string;
	onDelete?: () => void;
	className?: string;
}

export function OrganizationCard({
	id,
	name,
	description,
	memberCount,
	role,
	href,
	onDelete,
	className,
}: OrganizationCardProps) {
	const roleConfig = ROLE_CONFIG[role];
	const RoleIcon = roleConfig.icon;
	const canDelete = role === 'owner';

	return (
		<div
			className={cn(
				'group relative rounded-xl border bg-card',
				'transition-all duration-300 ease-out',
				'hover:shadow-lg hover:shadow-black/5 dark:hover:shadow-black/20',
				'hover:border-border/80 hover:-translate-y-0.5',
				className
			)}
		>
			{/* Main clickable area */}
			<Link href={href as Route} className='block p-5'>
				{/* Header */}
				<div className='flex items-start justify-between gap-4 mb-4'>
					<div className='min-w-0 flex-1'>
						<h3 className='text-lg font-semibold text-foreground tracking-tight truncate group-hover:text-primary transition-colors duration-200'>
							{name}
						</h3>
						{description && (
							<p className='text-sm text-muted-foreground mt-1 truncate'>{description}</p>
						)}
					</div>
				</div>

				{/* Footer with role and member count */}
				<div className='flex items-center justify-between gap-3'>
					<Badge
						variant='outline'
						className={cn(
							'gap-1.5 px-2 py-0.5 text-xs font-medium border',
							roleConfig.className
						)}
					>
						<RoleIcon className='h-3 w-3' />
						{roleConfig.label}
					</Badge>

					{memberCount !== undefined && (
						<span className='text-xs text-muted-foreground tabular-nums'>
							{memberCount} {memberCount === 1 ? 'member' : 'members'}
						</span>
					)}
				</div>
			</Link>

			{/* Action menu - positioned absolutely */}
			<div className='absolute top-3 right-3'>
				<DropdownMenu>
					<DropdownMenuTrigger asChild>
						<Button
							variant='ghost'
							size='icon'
							className={cn(
								'h-8 w-8 rounded-lg',
								'opacity-0 group-hover:opacity-100',
								'transition-opacity duration-200',
								'hover:bg-muted'
							)}
							onClick={(e) => e.stopPropagation()}
						>
							<MoreHorizontalIcon className='h-4 w-4' />
							<span className='sr-only'>Actions</span>
						</Button>
					</DropdownMenuTrigger>
					<DropdownMenuContent align='end' className='w-48'>
						<DropdownMenuItem asChild>
							<Link href={href as Route} className='gap-2'>
								<ExternalLinkIcon className='h-4 w-4' />
							View organization
							</Link>
						</DropdownMenuItem>
						{canDelete && (
							<>
								<DropdownMenuSeparator />
								<DropdownMenuItem
									variant='destructive'
									className='gap-2'
									onClick={(e) => {
										e.preventDefault();
										onDelete?.();
									}}
								>
									<Trash2Icon className='h-4 w-4' />
									Delete organization
								</DropdownMenuItem>
							</>
						)}
					</DropdownMenuContent>
				</DropdownMenu>
			</div>
		</div>
	);
}

export interface OrganizationGridProps {
	children: React.ReactNode;
	className?: string;
}

export function OrganizationGrid({ children, className }: OrganizationGridProps) {
	return (
		<div className={cn('grid gap-4 sm:grid-cols-2 lg:grid-cols-3', className)}>
			{children}
		</div>
	);
}
