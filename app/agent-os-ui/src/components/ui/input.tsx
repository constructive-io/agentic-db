'use client';

import { Input as InputPrimitive } from '@base-ui/react/input';
import type * as React from 'react';

import { cn } from '@/lib/utils';

type InputProps = Omit<InputPrimitive.Props & React.RefAttributes<HTMLInputElement>, 'size'> & {
	size?: 'sm' | 'default' | 'lg' | number;
	unstyled?: boolean;
};

function Input({ className, size = 'default', unstyled = false, ...props }: InputProps) {
	const isFloating = props.placeholder === ' ';

	return (
		<span
			className={
				cn(
					!unstyled && [
						// Base layout
						'relative inline-flex w-full rounded-lg border border-input bg-background bg-clip-padding text-base shadow-xs transition-shadow',
						// Inner shadow highlight
						'before:pointer-events-none before:absolute before:inset-0 before:rounded-[calc(var(--radius-lg)-1px)]',
						'not-has-disabled:not-has-focus-visible:not-has-aria-invalid:before:shadow-[0_1px_--theme(--color-black/4%)]',
						// Focus state - use primary brand color
						'has-focus-visible:border-primary/60 has-focus-visible:ring-[3px] has-focus-visible:ring-primary/35',
						// Invalid state
						'has-aria-invalid:border-destructive/36',
						'has-focus-visible:has-aria-invalid:border-destructive/64 has-focus-visible:has-aria-invalid:ring-destructive/16',
						// Disabled state
						'has-disabled:opacity-64 has-[:disabled,:focus-visible,[aria-invalid]]:shadow-none',
						// Dark mode
						'sm:text-sm dark:bg-input/32 dark:not-in-data-[slot=group]:bg-clip-border',
						'dark:has-aria-invalid:ring-destructive/24',
						'dark:not-has-disabled:not-has-focus-visible:not-has-aria-invalid:before:shadow-[0_-1px_--theme(--color-white/8%)]',
					],
					className,
				) || undefined
			}
			data-size={size}
			data-slot="input-control"
		>
			<InputPrimitive
				className={cn(
					'w-full min-w-0 rounded-[inherit] bg-transparent px-[calc(--spacing(3)-1px)] outline-none',
					isFloating
						? 'h-11 pt-4.5 pb-1 leading-none placeholder:text-transparent sm:h-10'
						: 'h-8.5 leading-8.5 placeholder:text-muted-foreground/72 sm:h-7.5 sm:leading-7.5',
					size === 'sm' &&
						(isFloating
							? 'h-10 px-[calc(--spacing(2.5)-1px)] pt-4 pb-1 sm:h-9'
							: 'h-7.5 px-[calc(--spacing(2.5)-1px)] leading-7.5 sm:h-6.5 sm:leading-6.5'),
					size === 'lg' &&
						(isFloating ? 'h-12 pt-5 pb-1.5 sm:h-11' : 'h-9.5 leading-9.5 sm:h-8.5 sm:leading-8.5'),
					props.type === 'search' &&
						'[&::-webkit-search-cancel-button]:appearance-none [&::-webkit-search-decoration]:appearance-none [&::-webkit-search-results-button]:appearance-none [&::-webkit-search-results-decoration]:appearance-none',
					props.type === 'file' &&
						'text-muted-foreground file:me-3 file:bg-transparent file:font-medium file:text-foreground file:text-sm',
				)}
				data-slot="input"
				size={typeof size === 'number' ? size : undefined}
				{...props}
			/>
		</span>
	);
}

export { Input };
export type { InputProps };
