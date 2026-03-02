'use client';

import { Activity } from 'lucide-react';

import { useEntityParams } from '@/lib/navigation';
import { PageHeaderWithIcon } from '@/components/shared/page-header-with-icon';

export default function OrgActivityPage() {
	const { orgId, organization } = useEntityParams();

	if (!orgId || !organization?._raw) {
		return null;
	}

	return (
		<div className='h-full overflow-y-auto' data-testid='org-activity-route'>
			<div className='mx-auto max-w-3xl px-6 py-12'>
				<PageHeaderWithIcon
					title='Activity'
					description={`Track changes and audit logs for ${organization.name}`}
					icon={Activity}
					actions={
						<span
							className='bg-primary/10 text-primary animate-in fade-in-0 zoom-in-95 inline-flex items-center
								rounded-full px-3 py-1 text-xs font-medium duration-500'
							style={{ animationDelay: '200ms' }}
						>
							Coming Soon
						</span>
					}
				/>

				<div className='mt-12'>
					{/* Empty state with subtle animation */}
					<div
						className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards relative flex flex-col
							items-center justify-center rounded-2xl border border-dashed border-border/60 bg-muted/20 py-24
							duration-500'
						style={{ animationDelay: '100ms' }}
					>
						{/* Subtle animated rings */}
						<div className='relative mb-8'>
							<div className='absolute inset-0 -m-4 animate-pulse rounded-full bg-primary/5' />
							<div
								className='absolute inset-0 -m-8 animate-pulse rounded-full bg-primary/3'
								style={{ animationDelay: '500ms' }}
							/>
							<div className='relative flex h-16 w-16 items-center justify-center rounded-2xl bg-gradient-to-br from-primary/15 to-primary/5 ring-1 ring-primary/20'>
								<Activity className='h-8 w-8 text-primary' />
							</div>
						</div>

						<h3 className='text-foreground text-lg font-semibold tracking-tight'>Activity tracking is on its way</h3>
						<p className='text-muted-foreground mt-2 max-w-sm text-center text-sm leading-relaxed'>
							Soon you&apos;ll be able to monitor all changes, track user actions, and review audit logs for your
							organization.
						</p>

						{/* Feature preview pills */}
						<div
							className='animate-in fade-in-0 slide-in-from-bottom-2 fill-mode-backwards mt-8 flex flex-wrap
								justify-center gap-2 duration-500'
							style={{ animationDelay: '200ms' }}
						>
							{['Change history', 'User actions', 'Audit logs', 'Export reports'].map((feature, index) => (
								<span
									key={feature}
									className='animate-in fade-in-0 zoom-in-95 fill-mode-backwards rounded-full bg-muted/60 px-3
										py-1.5 text-xs font-medium text-muted-foreground duration-300'
									style={{ animationDelay: `${300 + index * 75}ms` }}
								>
									{feature}
								</span>
							))}
						</div>
					</div>
				</div>

				<div className='h-12' />
			</div>
		</div>
	);
}
