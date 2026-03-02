'use client';

import * as React from 'react';

import { cn } from '@/lib/utils';

type LabelProps = React.ComponentProps<'label'>;

/**
 * Label component for form controls.
 * Uses a standard HTML label element for maximum compatibility.
 */
function Label({ className, ...props }: LabelProps) {
	return (
		<label
			data-slot="label"
			className={cn(
				`text-foreground text-sm leading-4 font-medium select-none group-data-[disabled=true]:pointer-events-none
				group-data-[disabled=true]:opacity-50 peer-disabled:cursor-not-allowed peer-disabled:opacity-50
				data-[disabled]:pointer-events-none data-[disabled]:opacity-50`,
				className,
			)}
			{...props}
		/>
	);
}

export { Label };
export type { LabelProps };
