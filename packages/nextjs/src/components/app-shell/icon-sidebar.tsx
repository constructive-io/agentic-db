'use client';

import * as React from "react";
import Link from "next/link";
import type { Route } from "next";
import { motion } from "motion/react";
import { ChevronLeft } from "lucide-react";
import { cn } from "@/lib/utils";
import { branding } from '@/config/branding';
import type { NavGroup, NavItem } from "./app-shell.types";
import { SIDEBAR_COLLAPSED_WIDTH, SIDEBAR_EXPANDED_WIDTH } from "./app-shell.types";

interface IconSidebarProps {
	navigation: NavGroup[];
	className?: string;
	/** Whether the sidebar is pinned open */
	isPinned?: boolean;
	/** Callback when the pin toggle is clicked */
	onTogglePin?: () => void;
}

function SidebarItem({ item, isExpanded }: { item: NavItem; isExpanded: boolean }) {
	const Icon = item.icon;
	const isActive = item.isActive ?? false;

	const baseClasses = cn(
		'group/item flex h-10 items-center gap-3 rounded-lg px-2.5',
		'text-sidebar-foreground/70 transition-colors duration-150',
		'hover:text-sidebar-foreground hover:bg-sidebar-accent',
		isActive && 'bg-sidebar-accent text-sidebar-foreground',
	);

	const content = (
		<>
			<Icon
				className={cn('h-5 w-5 shrink-0', isActive ? 'text-primary' : 'text-sidebar-foreground/60')}
				aria-hidden='true'
			/>
			<motion.span
				className='truncate text-sm font-medium whitespace-nowrap'
				initial={false}
				animate={{
					opacity: isExpanded ? 1 : 0,
					width: isExpanded ? 'auto' : 0,
				}}
				transition={{ duration: 0.15 }}
			>
				{item.label}
			</motion.span>
		</>
	);

	// If it has onClick but no href, render as button
	if (item.onClick && !item.href) {
		return (
			<button
				type='button'
				onClick={item.onClick}
				disabled={item.disabled}
				className={cn(baseClasses, item.disabled && 'cursor-not-allowed opacity-50')}
			>
				{content}
			</button>
		);
	}

	// If it has a custom render, use that
	if (item.render) {
		return <>{item.render}</>;
	}

	// Otherwise render as Link
	return (
		<Link href={(item.href ?? '#') as Route} className={baseClasses}>
			{content}
		</Link>
	);
}

export function IconSidebar({ navigation, className, isPinned = false, onTogglePin }: IconSidebarProps) {
	const topItems = navigation.filter((g) => g.position === 'top').flatMap((g) => g.items);
	const bottomItems = navigation.filter((g) => g.position === 'bottom').flatMap((g) => g.items);

	return (
		<div className='group/sidebar-root relative shrink-0'>
			<motion.aside
				initial={{ width: isPinned ? SIDEBAR_EXPANDED_WIDTH : SIDEBAR_COLLAPSED_WIDTH }}
				animate={{ width: isPinned ? SIDEBAR_EXPANDED_WIDTH : SIDEBAR_COLLAPSED_WIDTH }}
				transition={{
					type: 'spring',
					stiffness: 500,
					damping: 35,
					mass: 0.8,
				}}
				className={cn(
					'group/sidebar flex h-full flex-col border-r border-sidebar-border bg-sidebar pt-2 pb-3 overflow-hidden',
					className,
				)}
			>
				{/* Top navigation */}
				<nav className='flex flex-1 flex-col gap-1 px-2'>
					{topItems.map((item) => (
						<SidebarItem key={item.id} item={item} isExpanded={isPinned} />
					))}
				</nav>

				{/* Bottom navigation */}
				{bottomItems.length > 0 && (
					<nav className='mt-auto flex flex-col gap-1 px-2'>
						{bottomItems.map((item) => (
							<SidebarItem key={item.id} item={item} isExpanded={isPinned} />
						))}
					</nav>
				)}

				{/* Powered by tagline */}
				{branding.tagline && (
					<div className='mt-2 flex justify-center border-t border-sidebar-border px-2 pt-2'>
						<motion.span
							className='text-muted-foreground/50 truncate text-[9px] leading-tight whitespace-nowrap'
							initial={false}
							animate={{
								opacity: isPinned ? 1 : 0.7,
							}}
							transition={{ duration: 0.15 }}
						>
							{isPinned ? branding.tagline : 'C'}
						</motion.span>
					</div>
				)}
			</motion.aside>

			{/* Edge toggle — full-height hit zone on the border, chevron reveals on hover */}
			{onTogglePin && (
				<button
					type='button'
					onClick={onTogglePin}
					className={cn(
						'absolute inset-y-0 right-0 z-10 w-4 -mr-2',
						'flex items-start justify-center',
						'cursor-col-resize',
						'group/edge',
					)}
					aria-label={isPinned ? 'Collapse sidebar' : 'Expand sidebar'}
				>
					{/* Hover highlight line */}
					<div
						className={cn(
							'absolute inset-y-0 right-2 w-px',
							'bg-transparent group-hover/edge:bg-primary/40',
							'transition-colors duration-150',
						)}
					/>
					{/* Chevron pill — appears on hover */}
					<div
						className={cn(
							'mt-14 flex h-6 w-6 items-center justify-center',
							'rounded-full border border-border bg-background shadow-sm',
							'text-muted-foreground group-hover/edge:text-foreground',
							'opacity-0 scale-90 group-hover/edge:opacity-100 group-hover/edge:scale-100',
							'transition-all duration-150',
						)}
					>
						<motion.div
							initial={false}
							animate={{ rotate: isPinned ? 0 : 180 }}
							transition={{ duration: 0.2 }}
						>
							<ChevronLeft className='h-3 w-3' />
						</motion.div>
					</div>
				</button>
			)}
		</div>
	);
}
