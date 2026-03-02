'use client';

import type * as React from 'react';

import { cn } from '@/lib/utils';

type TextareaProps = React.ComponentProps<'textarea'> & {
	size?: 'sm' | 'default' | 'lg' | number;
	unstyled?: boolean;
};

function Textarea({ className, size = 'default', unstyled = false, ...props }: TextareaProps) {
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
						// Focus state - use primary brand color (matches Input)
						'has-focus-visible:border-primary/60 has-focus-visible:ring-[3px] has-focus-visible:ring-primary/35',
						// Invalid state
						'has-aria-invalid:border-destructive/36',
						'has-focus-visible:has-aria-invalid:border-destructive/64 has-focus-visible:has-aria-invalid:ring-destructive/16',
						// Disabled state
						'has-disabled:opacity-64 has-[:disabled,:focus-visible,[aria-invalid]]:shadow-none',
						// Dark mode
						'sm:text-sm dark:bg-input/32 dark:bg-clip-border',
						'dark:has-aria-invalid:ring-destructive/24',
						'dark:not-has-disabled:not-has-focus-visible:not-has-aria-invalid:before:shadow-[0_-1px_--theme(--color-white/8%)]',
					],
					className,
				) || undefined
			}
			data-size={size}
			data-slot="textarea-control"
		>
			<textarea
				className={cn(
					'field-sizing-content min-h-17.5 w-full rounded-[inherit] bg-transparent px-[calc(--spacing(3)-1px)] py-[calc(--spacing(1.5)-1px)] outline-none max-sm:min-h-20.5',
					size === 'sm' && 'min-h-16.5 px-[calc(--spacing(2.5)-1px)] py-[calc(--spacing(1)-1px)] max-sm:min-h-19.5',
					size === 'lg' && 'min-h-18.5 py-[calc(--spacing(2)-1px)] max-sm:min-h-21.5',
				)}
				data-slot="textarea"
				{...props}
			/>
		</span>
	);
}

export { Textarea };
export type { TextareaProps };
