'use client';

import * as React from 'react';

import { cn } from '@/lib/utils';

import type { TopBarConfig } from './app-shell.types';
import { EntitySwitcher } from './entity-switcher';
import { SearchTrigger } from './search-trigger';
import { StatusBadge } from './status-badge';

interface TopBarProps {
	config: TopBarConfig;
	/** Width of the sidebar section for alignment */
	sidebarWidth?: number;
	className?: string;
}

function BreadcrumbSeparator() {
	return (
		<span className='text-muted-foreground/40 select-none' aria-hidden='true'>
			/
		</span>
	);
}

export function TopBar({ config, sidebarWidth = 56, className }: TopBarProps) {
	const { sidebarLogo, entityLevels, status, search, actions } = config;

	// Filter to only show levels that have an active entity or are the first level
	const visibleLevels = entityLevels.filter((level, index) => {
		if (index === 0) return true;
		// Show level if previous level has an active entity
		const prevLevel = entityLevels[index - 1];
		return prevLevel?.activeEntityId != null;
	});

	return (
		<header className={cn('bg-background flex h-12 items-center border-b', 'transition-all duration-200', className)}>
			{/* Logo section - consistent width whether sidebar is visible or not */}
			{sidebarLogo && (
				<div
					className={cn(
						'flex h-full shrink-0 items-center justify-center transition-all duration-200',
						sidebarWidth > 0 && 'border-sidebar-border border-r',
					)}
					style={{ width: sidebarWidth || 56 }}
				>
					{sidebarLogo}
				</div>
			)}

			{/* Main topbar content */}
			<div className='flex min-w-0 flex-1 items-center gap-2 px-3'>
				{/* Entity hierarchy breadcrumb */}
				{visibleLevels.map((level, index) => (
					<React.Fragment key={level.id}>
						<EntitySwitcher level={level} size='sm' />
						{index < visibleLevels.length - 1 && <BreadcrumbSeparator />}
					</React.Fragment>
				))}

				{/* Status badge */}
				{status && <StatusBadge label={status.label} variant={status.variant} />}

				{/* Spacer */}
				<div className='flex-1' />

				{/* Search */}
				{search && <SearchTrigger placeholder={search.placeholder} shortcut={search.shortcut} onOpen={search.onOpen} />}

				{/* Right section: Actions */}
				{actions && <div className='flex shrink-0 items-center gap-2'>{actions}</div>}
			</div>
		</header>
	);
}
