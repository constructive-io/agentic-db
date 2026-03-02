'use client';

import { CheckCircleIcon, XIcon } from 'lucide-react';
import { toast } from 'sonner';

import { Button } from '@/components/ui/button';

export interface ToastSuccessProps {
	message: string;
	description?: string;
	action?: {
		label: string;
		onClick: () => void;
	};
	onDismiss?: () => void;
}

export function showSuccessToast(props: ToastSuccessProps) {
	const { message, description, action, onDismiss } = props;

	return toast.custom((t) => (
		<div
			className='bg-background text-foreground w-full rounded-md border border-green-200/60 px-4 py-3 shadow-lg
				sm:w-[var(--width)] dark:border-green-800/50'
		>
			<div className='flex gap-2'>
				<div className='flex grow gap-3'>
					<CheckCircleIcon
						className='mt-0.5 shrink-0 text-green-600 dark:text-green-500'
						size={16}
						aria-hidden='true'
					/>
					<div className='flex grow flex-col gap-1'>
						<p className='text-sm font-medium text-green-700 dark:text-green-400'>{message}</p>
						{description && <p className='text-muted-foreground text-sm'>{description}</p>}
						{action && (
							<div className='mt-2'>
								<button
									className='text-sm font-medium text-green-700 hover:underline dark:text-green-400'
									onClick={action.onClick}
								>
									{action.label}
								</button>
							</div>
						)}
					</div>
				</div>
				<Button
					variant='ghost'
					className='group -my-1.5 -me-2 size-8 shrink-0 p-0 hover:bg-transparent'
					onClick={() => {
						toast.dismiss(t);
						onDismiss?.();
					}}
					aria-label='Close success notification'
				>
					<XIcon size={16} className='opacity-60 transition-opacity group-hover:opacity-100' aria-hidden='true' />
				</Button>
			</div>
		</div>
	));
}
