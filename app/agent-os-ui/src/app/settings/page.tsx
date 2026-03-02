'use client';

import { useEffect, useState } from 'react';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';
import { Skeleton } from '@/components/ui/skeleton';
import { Switch } from '@/components/ui/switch';
import { showErrorToast, showSuccessToast } from '@/components/ui/toast';
import { AlertCircle, ArrowRight, Check, Loader2, Settings2, Shield, UserCheck, UserPlus } from 'lucide-react';

import { useAppSettings, useUpdateAppSettings } from '@/lib/gql/hooks/schema-builder/app';
import { cn } from '@/lib/utils';
import { PageHeaderWithIcon } from '@/components/shared/page-header-with-icon';

export default function AppSettingsPage() {
	const { settings, isLoading, error } = useAppSettings();
	const { updateSettings, isUpdating } = useUpdateAppSettings();

	const [isApproved, setIsApproved] = useState(true);
	const [hasChanges, setHasChanges] = useState(false);

	useEffect(() => {
		if (settings) {
			setIsApproved(settings.isApproved);
		}
	}, [settings]);

	useEffect(() => {
		if (settings) {
			const changed = isApproved !== settings.isApproved;
			setHasChanges(changed);
		} else {
			setHasChanges(true);
		}
	}, [isApproved, settings]);

	const handleSave = async () => {
		try {
			await updateSettings({
				isApproved,
			});
			showSuccessToast({
				message: 'Settings saved',
				description: 'Member permission settings have been updated.',
			});
			setHasChanges(false);
		} catch (err) {
			showErrorToast({
				message: 'Failed to save settings',
				description: err instanceof Error ? err.message : 'An error occurred',
			});
		}
	};

	const settingsConfig = [
		{
			id: 'members-approved',
			label: 'Members approved',
			description: 'Auto-approve new members. When off, an admin must approve each request.',
			icon: UserCheck,
			checked: isApproved,
			onChange: setIsApproved,
		},
	];

	if (error) {
		return (
			<div className='h-full overflow-y-auto'>
				<div className='mx-auto max-w-6xl px-6 py-8 lg:px-8 lg:py-10'>
					<div
						className={cn(
							'border-destructive/30 bg-destructive/5 flex items-start gap-4 rounded-xl border p-5',
							'animate-in fade-in-0 slide-in-from-bottom-4 duration-500',
						)}
					>
						<div className='bg-destructive/15 flex h-10 w-10 shrink-0 items-center justify-center rounded-lg'>
							<AlertCircle className='text-destructive h-5 w-5' />
						</div>
						<div>
							<h3 className='text-destructive text-sm font-semibold'>Failed to load settings</h3>
							<p className='text-muted-foreground mt-1 text-sm'>{error.message}</p>
						</div>
					</div>
				</div>
			</div>
		);
	}

	return (
		<div className='h-full overflow-y-auto'>
			<div className='mx-auto max-w-6xl px-6 py-8 lg:px-8 lg:py-10'>
				<PageHeaderWithIcon
					title='App Settings'
					description='Configure platform-wide settings that apply to all users and organizations'
					icon={Settings2}
				/>

				{/* Member Permissions Section */}
				<section
					className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
					style={{ animationDelay: '100ms' }}
				>
					{/* Section header */}
					<div className='mb-5 flex items-baseline justify-between'>
						<div className='flex items-center gap-3'>
							<div className='bg-muted/60 flex h-8 w-8 items-center justify-center rounded-lg'>
								<Shield className='text-muted-foreground h-4 w-4' />
							</div>
							<div>
								<h2 className='text-foreground text-base font-semibold tracking-tight'>Member Permissions</h2>
								<p className='text-muted-foreground text-xs'>
									Default security settings for new members joining the platform
								</p>
							</div>
						</div>
					</div>

					{/* Settings grid */}
					<div className='grid gap-4'>
						{isLoading
							? Array.from({ length: 1 }).map((_, index) => <LoadingSkeleton key={index} index={index} />)
							: settingsConfig.map((setting, index) => (
									<SettingCard key={setting.id} {...setting} disabled={isUpdating} index={index} />
								))}
					</div>
				</section>

				{/* Save button */}
				<div
					className={cn(
						'border-border/50 bg-muted/30 mt-8 flex items-center justify-between rounded-xl border p-4',
						'animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500',
					)}
					style={{ animationDelay: '200ms' }}
				>
					<div className='flex items-center gap-2'>
						{hasChanges && !isLoading ? (
							<>
								<div className='h-2 w-2 animate-pulse rounded-full bg-amber-500' />
								<span className='text-muted-foreground text-xs'>Unsaved changes</span>
							</>
						) : (
							<>
								<Check className='text-muted-foreground/50 h-3.5 w-3.5' />
								<span className='text-muted-foreground/70 text-xs'>All changes saved</span>
							</>
						)}
					</div>
					<Button
						onClick={handleSave}
						disabled={isUpdating || isLoading || !hasChanges}
						size='sm'
						className='group gap-2'
					>
						{isUpdating ? (
							<>
								<Loader2 className='h-4 w-4 animate-spin' />
								Saving...
							</>
						) : (
							<>
								Save Changes
								<ArrowRight className='h-3.5 w-3.5 transition-transform group-hover:translate-x-0.5' />
							</>
						)}
					</Button>
				</div>

				{/* Bottom spacing */}
				<div className='h-10' />
			</div>
		</div>
	);
}

interface SettingCardProps {
	id: string;
	label: string;
	description: string;
	icon: React.ComponentType<{ className?: string }>;
	checked: boolean;
	onChange: (checked: boolean) => void;
	disabled?: boolean;
	index: number;
}

function SettingCard({ id, label, description, icon: Icon, checked, onChange, disabled, index }: SettingCardProps) {
	return (
		<div
			style={{ animationDelay: `${index * 75}ms` }}
			className={cn(
				'group relative flex flex-col rounded-xl border p-5',
				'animate-in fade-in-0 slide-in-from-bottom-3 fill-mode-backwards duration-300',
				'transition-all duration-200',
				// Stacked depth shadow on hover
				'hover:-translate-y-0.5',
				'hover:[box-shadow:0_1px_2px_rgba(0,0,0,0.04),0_2px_4px_rgba(0,0,0,0.04),0_4px_8px_rgba(0,0,0,0.04),0_8px_16px_rgba(0,0,0,0.02)]',
				'dark:hover:[box-shadow:0_1px_2px_rgba(0,0,0,0.1),0_2px_4px_rgba(0,0,0,0.1),0_4px_8px_rgba(0,0,0,0.1),0_8px_16px_rgba(0,0,0,0.08)]',
				checked ? 'border-primary/40 bg-primary/5' : 'border-border/50 bg-card hover:border-border/80',
			)}
		>
			{/* Status indicator */}
			<div
				className={cn(
					'absolute top-3 right-3 flex h-5 w-5 items-center justify-center rounded-full transition-all duration-200',
					checked ? 'bg-primary/15 text-primary' : 'bg-muted/50 text-muted-foreground/50',
				)}
			>
				{checked ? <Check className='h-3 w-3' /> : <div className='h-1.5 w-1.5 rounded-full bg-current' />}
			</div>

			{/* Icon */}
			<div className='mb-4'>
				<div
					className={cn(
						'flex h-11 w-11 items-center justify-center rounded-lg transition-all duration-200',
						checked
							? 'bg-primary text-primary-foreground'
							: 'bg-muted/60 text-muted-foreground group-hover:bg-muted group-hover:text-foreground',
					)}
				>
					<Icon className='h-5 w-5' />
				</div>
			</div>

			{/* Content */}
			<div className='mb-4 flex-1'>
				<Label
					htmlFor={id}
					className={cn(
						'cursor-pointer text-sm font-semibold tracking-tight transition-colors',
						checked ? 'text-foreground' : 'text-foreground/80',
					)}
				>
					{label}
				</Label>
				<p className='text-muted-foreground mt-1 text-xs leading-relaxed'>{description}</p>
			</div>

			{/* Switch control */}
			<div className='border-border/30 flex items-center justify-between border-t pt-4'>
				<span
					className={cn(
						'text-[11px] font-medium tracking-wider uppercase transition-colors',
						checked ? 'text-primary' : 'text-muted-foreground',
					)}
				>
					{checked ? 'Enabled' : 'Disabled'}
				</span>
				<Switch id={id} checked={checked} onCheckedChange={onChange} disabled={disabled} />
			</div>
		</div>
	);
}

function LoadingSkeleton({ index }: { index: number }) {
	return (
		<div
			style={{ animationDelay: `${index * 75}ms` }}
			className={cn(
				'border-border/50 bg-card relative flex flex-col rounded-xl border p-5',
				'animate-in fade-in-0 slide-in-from-bottom-3 fill-mode-backwards duration-300',
			)}
		>
			<Skeleton className='absolute top-3 right-3 h-5 w-5 rounded-full' />
			<Skeleton className='mb-4 h-11 w-11 rounded-lg' />
			<div className='mb-4 flex-1 space-y-2'>
				<Skeleton className='h-4 w-24' />
				<Skeleton className='h-3 w-full' />
				<Skeleton className='h-3 w-3/4' />
			</div>
			<div className='border-border/30 flex items-center justify-between border-t pt-4'>
				<Skeleton className='h-3 w-12' />
				<Skeleton className='h-[1.15rem] w-8 rounded-full' />
			</div>
		</div>
	);
}
