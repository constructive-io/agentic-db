'use client';

import * as React from 'react';
import { Tabs as TabsPrimitive } from '@base-ui/react/tabs';

import { cn } from '@/lib/utils';

function Tabs({ className, ...props }: React.ComponentProps<typeof TabsPrimitive.Root>) {
	return <TabsPrimitive.Root data-slot="tabs" className={cn('flex flex-col gap-2', className)} {...props} />;
}

function TabsList({ className, ...props }: React.ComponentProps<typeof TabsPrimitive.List>) {
	return (
		<TabsPrimitive.List
			data-slot="tabs-list"
			className={cn(
				'bg-muted text-muted-foreground/70 inline-flex w-fit items-center justify-center rounded-md p-0.5',
				className,
			)}
			{...props}
		/>
	);
}

function TabsTrigger({ className, ...props }: React.ComponentProps<typeof TabsPrimitive.Tab>) {
	return (
		<TabsPrimitive.Tab
			data-slot="tabs-trigger"
			className={cn(
				`hover:text-muted-foreground data-[active]:bg-background data-[active]:text-foreground
				focus-visible:border-ring focus-visible:ring-ring/50 inline-flex items-center justify-center rounded-sm px-3
				py-1.5 text-sm font-medium whitespace-nowrap transition-all outline-none focus-visible:ring-[3px]
				data-[disabled]:pointer-events-none data-[disabled]:opacity-50 data-[active]:shadow-xs [&_svg]:shrink-0`,
				className,
			)}
			{...props}
		/>
	);
}

function TabsContent({ className, ...props }: React.ComponentProps<typeof TabsPrimitive.Panel>) {
	return <TabsPrimitive.Panel data-slot="tabs-content" className={cn('flex-1 outline-none', className)} {...props} />;
}

export { Tabs, TabsContent, TabsList, TabsTrigger };
