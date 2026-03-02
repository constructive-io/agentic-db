'use client';

import * as React from 'react';
import { Tooltip as TooltipPrimitive } from '@base-ui/react/tooltip';

import { useFloatingOverlayPortalProps } from '@/components/ui/portal';
import { mergePropsWithRef } from '@/lib/slot';
import { cn } from '@/lib/utils';

type TooltipProviderProps = React.ComponentProps<typeof TooltipPrimitive.Provider> & {
	/** @deprecated Use delay instead */
	delayDuration?: number;
};

function TooltipProvider({ delay = 0, delayDuration, ...props }: TooltipProviderProps) {
	return <TooltipPrimitive.Provider data-slot="tooltip-provider" delay={delayDuration ?? delay} {...props} />;
}

type TooltipProps = React.ComponentProps<typeof TooltipPrimitive.Root> & {
	/** @deprecated Use delay on Trigger instead */
	delayDuration?: number;
};

function Tooltip({ delayDuration: _delayDuration, ...props }: TooltipProps) {
	return <TooltipPrimitive.Root data-slot="tooltip" {...props} />;
}

type TooltipTriggerProps = Omit<React.ComponentProps<typeof TooltipPrimitive.Trigger>, 'render'> & {
	delay?: number;
	/** When true, merges props onto the child element instead of rendering a button */
	asChild?: boolean;
};

function TooltipTrigger({ delay = 0, asChild, children, ...props }: TooltipTriggerProps) {
	if (asChild && React.isValidElement(children)) {
		return (
			<TooltipPrimitive.Trigger
				data-slot="tooltip-trigger"
				delay={delay}
				{...props}
			render={(triggerProps) => {
				return React.cloneElement(
					children as React.ReactElement<Record<string, unknown>>,
					mergePropsWithRef(triggerProps as Record<string, unknown>, children as React.ReactElement),
				);
			}}
			/>
		);
	}
	return (
		<TooltipPrimitive.Trigger data-slot="tooltip-trigger" delay={delay} {...props}>
			{children}
		</TooltipPrimitive.Trigger>
	);
}

type TooltipContentProps = React.ComponentProps<typeof TooltipPrimitive.Popup> & {
	sideOffset?: number;
	showArrow?: boolean;
	side?: 'top' | 'bottom' | 'left' | 'right';
	align?: 'start' | 'center' | 'end';
};

function TooltipContent({
	className,
	sideOffset = 4,
	showArrow = false,
	side = 'top',
	align = 'center',
	children,
	...props
}: TooltipContentProps) {
	const { container, zIndexClass } = useFloatingOverlayPortalProps();

	return (
		<TooltipPrimitive.Portal container={container}>
			<TooltipPrimitive.Positioner side={side} align={align} sideOffset={sideOffset} className={zIndexClass}>
				<TooltipPrimitive.Popup
					data-slot="tooltip-content"
					className={cn(
						`bg-popover text-popover-foreground data-[open]:animate-in data-[open]:fade-in-0 data-[open]:zoom-in-95
						data-[closed]:animate-out data-[closed]:fade-out-0 data-[closed]:zoom-out-95
						data-[side=bottom]:slide-in-from-top-2 data-[side=left]:slide-in-from-right-2
						data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2
						relative max-w-70 rounded-md border px-2 py-1 text-xs`,
						className,
					)}
					{...props}
				>
					{children}
					{showArrow && (
						<TooltipPrimitive.Arrow className='fill-popover -my-px drop-shadow-[0_1px_0_hsl(var(--border))]' />
					)}
				</TooltipPrimitive.Popup>
			</TooltipPrimitive.Positioner>
		</TooltipPrimitive.Portal>
	);
}

export { Tooltip, TooltipContent, TooltipProvider, TooltipTrigger };
