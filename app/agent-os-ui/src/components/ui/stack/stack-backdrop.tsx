'use client';

import * as React from 'react';
import { motion, useReducedMotion } from 'motion/react';

import { cn } from '@/lib/utils';

import { backdropVariants, reducedMotionBackdropVariants } from './stack-animations';
import { useCardStack, useStackContext } from './stack-context';
import type { BackdropConfig } from './stack.types';

export type StackBackdropProps = {
	/** Additional class names */
	className?: string;
	/** Click handler (typically closes the stack) */
	onClick?: () => void;
	/** Backdrop configuration (blur, custom className) */
	config?: BackdropConfig;
};

export function StackBackdrop({ className, onClick, config: backdropConfig }: StackBackdropProps) {
	const { config } = useStackContext();
	const api = useCardStack();
	const prefersReducedMotion = useReducedMotion();

	const handleClick = React.useCallback(() => {
		if (onClick) {
			onClick();
		} else {
			// Default behavior: clear the entire stack
			api.clear();
		}
	}, [onClick, api]);

	const variants = prefersReducedMotion ? reducedMotionBackdropVariants : backdropVariants;

	// Resolve backdrop styling - blur is off by default
	const useBlur = backdropConfig?.blur ?? false;

	return (
		<motion.div
			data-slot="stack-backdrop"
			variants={variants}
			initial="initial"
			animate="animate"
			exit="exit"
			onClick={handleClick}
			style={{
				zIndex: config.zIndexBase - 1,
				willChange: 'opacity',
			}}
			className={cn(
				'fixed inset-0',
				'cursor-pointer',
				// Default overlay or custom className
				backdropConfig?.className ?? 'bg-black/50',
				// Optional blur
				useBlur && 'backdrop-blur-sm',
				className,
			)}
		/>
	);
}
