import type { ComponentType, SVGProps } from 'react';
import type { RemixiconComponentType } from '@remixicon/react';

export type IconType = RemixiconComponentType | ComponentType<SVGProps<SVGSVGElement>>;

// Sidebar width constants - used for consistent alignment between sidebar and topbar
export const SIDEBAR_COLLAPSED_WIDTH = 56;
export const SIDEBAR_EXPANDED_WIDTH = 200;

export interface NavItem {
	id: string;
	label: string;
	icon: IconType;
	href?: string;
	onClick?: () => void;
	isActive?: boolean;
	disabled?: boolean;
	render?: React.ReactNode;
}

export interface NavGroup {
	id: string;
	items: NavItem[];
	position: 'top' | 'bottom';
}

// Entity hierarchy types
export interface Entity {
	id: string;
	name: string;
	icon?: IconType;
	avatar?: string;
	metadata?: Record<string, unknown>;
}

export interface EntityLevel {
	id: string;
	label: string;
	labelPlural: string;
	entities: Entity[];
	activeEntityId: string | null;
	onEntityChange: (entityId: string) => void;
	onCreateNew?: () => void;
	createLabel?: string;
	/** Link to view all entities of this type */
	viewAllHref?: string;
}

export interface TopBarConfig {
	/**
	 * Sidebar logo - displayed in the sidebar-aligned section of the topbar
	 * This creates visual continuity with the sidebar below
	 */
	sidebarLogo?: React.ReactNode;

	/**
	 * Custom element rendered before entity levels (e.g., "App" link)
	 */
	breadcrumbPrefix?: React.ReactNode;

	/**
	 * Entity hierarchy levels (e.g., organization)
	 */
	entityLevels: EntityLevel[];

	/**
	 * Status badge configuration
	 */
	status?: {
		label: string;
		variant?: 'default' | 'secondary' | 'destructive' | 'outline' | 'success' | 'warning';
	};

	/**
	 * Search configuration
	 */
	search?: {
		placeholder?: string;
		shortcut?: string;
		onSearch?: (query: string) => void;
		onOpen?: () => void;
	};

	/**
	 * Right-side actions
	 */
	actions?: React.ReactNode;
}

export interface AppShellProps {
	/**
	 * Navigation items for the sidebar
	 */
	navigation: NavGroup[];

	/**
	 * Top bar configuration
	 */
	topBar: TopBarConfig;

	/**
	 * Main content
	 */
	children: React.ReactNode;

	/**
	 * Additional class names
	 */
	className?: string;

	/**
	 * Hide the left sidebar while keeping the top bar visible
	 */
	hideSidebar?: boolean;
}
