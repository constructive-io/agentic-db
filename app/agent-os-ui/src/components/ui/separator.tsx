'use client';

import * as React from 'react';
import { Separator as SeparatorPrimitive } from '@base-ui/react/separator';

import { cn } from '@/lib/utils';

type SeparatorProps = React.ComponentProps<typeof SeparatorPrimitive> & {
	/** @deprecated Base UI handles accessibility automatically */
	decorative?: boolean;
};

function Separator({ className, orientation = 'horizontal', decorative: _decorative, ...props }: SeparatorProps) {
	return (
		<SeparatorPrimitive
			data-slot="separator-root"
			orientation={orientation}
			className={cn('bg-border shrink-0', orientation === 'horizontal' ? 'h-px w-full' : 'h-full w-px', className)}
			{...props}
		/>
	);
}

export { Separator };
export type { SeparatorProps };
