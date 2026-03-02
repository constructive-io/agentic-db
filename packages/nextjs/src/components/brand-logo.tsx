'use client';

import Image from 'next/image';
import { useTheme } from 'next-themes';
import { useEffect, useState } from 'react';

import { branding } from '@/config/branding';
import { cn } from '@/lib/utils';

export type BrandLogoVariant = 'wordmark' | 'icon' | 'watermark';

interface BrandLogoProps {
	/** Which variant to render */
	variant?: BrandLogoVariant;
	/** Show the tagline below the logo (e.g. "powered by Constructive") */
	showTagline?: boolean;
	className?: string;
	/** Additional class for the tagline text */
	taglineClassName?: string;
}

/**
 * Reusable brand logo component that reads from the centralized branding config.
 *
 * Variants:
 * - `wordmark` — full wordmark image (expanded sidebar, etc.)
 * - `icon` — small logo mark (collapsed sidebar, auth screens)
 * - `watermark` — large faded logo for background decoration (404/403 pages)
 */
export function BrandLogo({
	variant = 'icon',
	showTagline = false,
	className,
	taglineClassName,
}: BrandLogoProps) {
	const { resolvedTheme } = useTheme();
	const [mounted, setMounted] = useState(false);

	useEffect(() => {
		setMounted(true);
	}, []);

	const isDark = mounted ? resolvedTheme === 'dark' : false;

	const logoSrc = (isDark && branding.logoDark) || branding.logo;
	const wordmarkSrc = (isDark && branding.wordmarkDark) || branding.wordmark;

	if (variant === 'watermark') {
		// Prevent hydration mismatch
		if (!mounted) {
			return <div className={cn('h-[600px] w-auto', className)} />;
		}
		return (
			<Image
				src={logoSrc}
				alt={branding.name}
				width={0}
				height={0}
				className={cn('h-[600px] w-auto dark:invert', className)}
				unoptimized
				priority
			/>
		);
	}

	if (variant === 'wordmark') {
		if (!mounted) {
			return <div className={cn('h-5 w-auto', className)} />;
		}
		return (
			<div className='flex flex-col items-center'>
				<Image
					src={wordmarkSrc}
					alt={branding.name}
					width={0}
					height={0}
					className={cn('h-auto w-auto dark:invert', className)}
					unoptimized
					priority
				/>
				{showTagline && branding.tagline && (
					<span className={cn('text-muted-foreground mt-0.5 text-[9px] leading-tight', taglineClassName)}>
						{branding.tagline}
					</span>
				)}
			</div>
		);
	}

	// icon variant
	if (!mounted) {
		return <div className={cn('h-6 w-6', className)} />;
	}
	return (
		<div className='flex flex-col items-center'>
			<Image
				src={logoSrc}
				alt={branding.name}
				width={0}
				height={0}
				className={cn('h-6 w-auto dark:invert', className)}
				unoptimized
				priority
			/>
			{showTagline && branding.tagline && (
				<span className={cn('text-muted-foreground mt-0.5 text-[9px] leading-tight', taglineClassName)}>
					{branding.tagline}
				</span>
			)}
		</div>
	);
}
