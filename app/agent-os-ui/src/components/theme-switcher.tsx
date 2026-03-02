'use client';

import { useCallback, useEffect, useState } from 'react';
import { Moon, Sun } from 'lucide-react';
import { AnimatePresence, motion } from 'motion/react';
import { useTheme } from 'next-themes';

import { cn } from '@/lib/utils';

type ThemeKey = 'light' | 'dark';

const themeConfig = {
	light: { icon: Sun, label: 'light' },
	dark: { icon: Moon, label: 'dark' },
} as const;

export type ThemeSwitcherProps = {
	className?: string;
};

export const ThemeSwitcher = ({ className }: ThemeSwitcherProps) => {
	const { theme, setTheme, resolvedTheme } = useTheme();
	const [mounted, setMounted] = useState(false);

	const currentTheme: ThemeKey =
		theme === 'light' || theme === 'dark'
			? theme
			: resolvedTheme === 'light' || resolvedTheme === 'dark'
				? resolvedTheme
				: 'light';

	const nextTheme: ThemeKey = currentTheme === 'dark' ? 'light' : 'dark';

	const handleCycle = useCallback(() => {
		setTheme(nextTheme);
	}, [nextTheme, setTheme]);

	// Prevent hydration mismatch + normalize legacy "system" preference to a concrete theme.
	useEffect(() => {
		setMounted(true);

		if (theme === 'light' || theme === 'dark') {
			return;
		}

		const prefersDark = window.matchMedia?.('(prefers-color-scheme: dark)')?.matches;
		setTheme(prefersDark ? 'dark' : 'light');
	}, [setTheme, theme]);

	if (!mounted) {
		return null;
	}

	const { icon: Icon } = themeConfig[currentTheme];

	return (
		<button
			type='button'
			onClick={handleCycle}
			className={cn(
				'bg-background ring-border relative flex h-8 w-8 items-center justify-center rounded-full ring-1',
				'hover:bg-accent transition-colors',
				className
			)}
			aria-label={`Current theme: ${themeConfig[currentTheme].label}. Switch to ${themeConfig[nextTheme].label}.`}
		>
			<AnimatePresence mode='wait'>
				<motion.div
					key={currentTheme}
					initial={{ rotate: -90, opacity: 0, scale: 0.8 }}
					animate={{ rotate: 0, opacity: 1, scale: 1 }}
					exit={{ rotate: 90, opacity: 0, scale: 0.8 }}
					transition={{ duration: 0.15, ease: 'easeInOut' }}
					className='flex items-center justify-center'
				>
					<Icon className='text-foreground h-4 w-4' />
				</motion.div>
			</AnimatePresence>
		</button>
	);
};
