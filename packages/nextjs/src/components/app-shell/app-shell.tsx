'use client';

import { cn } from '@/lib/utils';

import type { AppShellProps } from './app-shell.types';
import { SIDEBAR_COLLAPSED_WIDTH, SIDEBAR_EXPANDED_WIDTH } from './app-shell.types';
import { IconSidebar } from './icon-sidebar';
import { TopBar } from './top-bar';

export interface AppShellWithSidebarProps extends AppShellProps {
	/** Whether the sidebar is pinned open */
	sidebarPinned?: boolean;
	/** Callback when the sidebar pin toggle is clicked */
	onToggleSidebarPin?: () => void;
}

export function AppShell({
	navigation,
	topBar,
	children,
	className,
	hideSidebar = false,
	sidebarPinned = false,
	onToggleSidebarPin,
}: AppShellWithSidebarProps) {
	// Use expanded width for TopBar alignment when pinned
	const effectiveSidebarWidth = hideSidebar
		? 0
		: sidebarPinned
			? SIDEBAR_EXPANDED_WIDTH
			: SIDEBAR_COLLAPSED_WIDTH;

	return (
		<div className={cn('flex h-screen w-full flex-col overflow-hidden', className)}>
			{/* Full-width compact Top Bar */}
			<TopBar config={topBar} sidebarWidth={effectiveSidebarWidth} />

			{/* Sidebar + Content row */}
			<div className='flex min-h-0 flex-1'>
				{/* Icon Sidebar */}
				{!hideSidebar && (
					<IconSidebar
						navigation={navigation}
						isPinned={sidebarPinned}
						onTogglePin={onToggleSidebarPin}
					/>
				)}

				{/* Page content */}
				<main className='min-w-0 flex-1 overflow-hidden'>{children}</main>
			</div>
		</div>
	);
}
