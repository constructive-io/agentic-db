'use client';

import { RiPuzzle2Line, RiShieldKeyholeLine, RiSparklingLine } from '@remixicon/react';

/**
 * Table category type - matches GraphQL TableCategory enum
 */
export type TableCategory = 'CORE' | 'MODULE' | 'APP';

/**
 * Category configuration with semantic icons and brand-harmonized color schemes
 * Uses blue-adjacent palette: steel (CORE), indigo (MODULE), sky (APP)
 * Colors complement the blue brand primary without competing
 */
export const CATEGORY_CONFIG = {
	CORE: {
		icon: RiShieldKeyholeLine,
		label: 'CORE',
		description: 'System tables',
		// Steel blue-gray - foundational, stable, neutral but brand-aligned
		activeClasses: 'bg-slate-200/80 text-slate-700 border-slate-400/60 dark:bg-slate-700/60 dark:text-slate-100 dark:border-slate-500/60',
		inactiveClasses: 'bg-slate-100/50 text-slate-400 border-slate-200/60 hover:bg-slate-200/60 hover:text-slate-600 hover:border-slate-300/60 dark:bg-slate-800/30 dark:text-slate-400 dark:border-slate-700/40 dark:hover:bg-slate-700/40 dark:hover:text-slate-200 dark:hover:border-slate-600/50',
		iconColor: 'text-slate-500 dark:text-slate-300',
		dotClass: 'bg-slate-500 dark:bg-slate-400',
	},
	MODULE: {
		icon: RiPuzzle2Line,
		label: 'MODULE',
		description: 'Installed modules',
		// Indigo - adjacent to brand blue, suggests extension/modularity
		activeClasses: 'bg-indigo-100 text-indigo-700 border-indigo-300/70 dark:bg-indigo-900/50 dark:text-indigo-100 dark:border-indigo-600/50',
		inactiveClasses: 'bg-indigo-50/50 text-indigo-400 border-indigo-200/50 hover:bg-indigo-100/70 hover:text-indigo-600 hover:border-indigo-300/60 dark:bg-indigo-950/20 dark:text-indigo-400 dark:border-indigo-800/30 dark:hover:bg-indigo-900/40 dark:hover:text-indigo-200 dark:hover:border-indigo-700/40',
		iconColor: 'text-indigo-500 dark:text-indigo-300',
		dotClass: 'bg-indigo-500 dark:bg-indigo-400',
	},
	APP: {
		icon: RiSparklingLine,
		label: 'APP',
		description: 'User-created',
		// Sky/cyan - complementary to blue, fresh and creative
		activeClasses: 'bg-sky-100 text-sky-700 border-sky-300/70 dark:bg-sky-900/50 dark:text-sky-100 dark:border-sky-600/50',
		inactiveClasses: 'bg-sky-50/50 text-sky-400 border-sky-200/50 hover:bg-sky-100/70 hover:text-sky-600 hover:border-sky-300/60 dark:bg-sky-950/20 dark:text-sky-400 dark:border-sky-800/30 dark:hover:bg-sky-900/40 dark:hover:text-sky-200 dark:hover:border-sky-700/40',
		iconColor: 'text-sky-500 dark:text-sky-300',
		dotClass: 'bg-sky-500 dark:bg-sky-400',
	},
} as const;

export const CATEGORY_ORDER: readonly TableCategory[] = ['CORE', 'MODULE', 'APP'] as const;
