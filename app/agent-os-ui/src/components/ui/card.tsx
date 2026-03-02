import * as React from 'react';
import { cva, type VariantProps } from 'class-variance-authority';

import { cn } from '@/lib/utils';

const cardVariants = cva(
	// Base styles
	'bg-card text-card-foreground flex flex-col gap-6 rounded-xl py-6 transition-all duration-200',
	{
		variants: {
			variant: {
				default: 'border border-border/50 shadow-card',
				elevated: 'border border-border/40 shadow-card-lg',
				flat: 'border border-border/60 shadow-none',
				ghost: 'border-transparent shadow-none bg-transparent',
				interactive: [
					'border border-border/50 shadow-card',
					'hover:shadow-card-lg hover:border-border/70 hover:-translate-y-0.5',
					'cursor-pointer',
				],
			},
		},
		defaultVariants: {
			variant: 'default',
		},
	},
);

interface CardProps extends React.ComponentProps<'div'>, VariantProps<typeof cardVariants> {}

function Card({ className, variant, ...props }: CardProps) {
	return <div data-slot="card" className={cn(cardVariants({ variant }), className)} {...props} />;
}

function CardHeader({ className, ...props }: React.ComponentProps<'div'>) {
	return (
		<div
			data-slot="card-header"
			className={cn(
				`@container/card-header grid auto-rows-min grid-rows-[auto_auto] items-start gap-1.5 px-6
				has-data-[slot=card-action]:grid-cols-[1fr_auto] [.border-b]:pb-6`,
				className,
			)}
			{...props}
		/>
	);
}

function CardTitle({ className, ...props }: React.ComponentProps<'div'>) {
	return (
		<div data-slot="card-title" className={cn('leading-none font-semibold tracking-tight', className)} {...props} />
	);
}

function CardDescription({ className, ...props }: React.ComponentProps<'div'>) {
	return <div data-slot="card-description" className={cn('text-muted-foreground text-sm', className)} {...props} />;
}

function CardAction({ className, ...props }: React.ComponentProps<'div'>) {
	return (
		<div
			data-slot="card-action"
			className={cn('col-start-2 row-span-2 row-start-1 self-start justify-self-end', className)}
			{...props}
		/>
	);
}

function CardContent({ className, ...props }: React.ComponentProps<'div'>) {
	return <div data-slot="card-content" className={cn('px-6', className)} {...props} />;
}

function CardFooter({ className, ...props }: React.ComponentProps<'div'>) {
	return (
		<div data-slot="card-footer" className={cn('flex items-center px-6 [.border-t]:pt-6', className)} {...props} />
	);
}

export { Card, CardHeader, CardFooter, CardTitle, CardAction, CardDescription, CardContent, cardVariants };
export type { CardProps };
