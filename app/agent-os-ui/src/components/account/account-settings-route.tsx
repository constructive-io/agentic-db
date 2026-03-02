'use client';

import { useState } from 'react';
import {
	AlertDialog,
	AlertDialogAction,
	AlertDialogCancel,
	AlertDialogContent,
	AlertDialogDescription,
	AlertDialogFooter,
	AlertDialogHeader,
	AlertDialogTitle,
	AlertDialogTrigger,
} from '@/components/ui/alert-dialog';
import { Button } from '@/components/ui/button';
import { useCardStack } from '@/components/ui/stack';
import { showErrorToast } from '@/components/ui/toast';
import { ChevronRight, Loader2, Settings } from 'lucide-react';

import { useDeleteUser } from '@/lib/gql/hooks/schema-builder/account/use-delete-user';
import { useAppStore } from '@/store/app-store';
import { PageHeaderWithIcon } from '@/components/shared/page-header-with-icon';

import { EditPasswordCard } from './edit-password-card';

function DeleteAccountSection() {
	const [isDeleting, setIsDeleting] = useState(false);
	const user = useAppStore((state) => state.auth.user);
	const { deleteUser } = useDeleteUser();

	const handleDeleteAccount = async () => {
		if (!user?.id) return;
		setIsDeleting(true);
		try {
			await deleteUser({ userId: user.id });
		} catch (error) {
			console.error('Failed to delete account:', error);
			showErrorToast({
				message: 'Failed to delete account',
				description: error instanceof Error ? error.message : 'An unexpected error occurred.',
			});
			setIsDeleting(false);
		}
	};

	return (
		<div className='bg-destructive/5 rounded-xl p-6'>
			<div className='flex items-start justify-between gap-8'>
				<div>
					<p className='text-foreground font-medium'>Delete Account</p>
					<p className='text-muted-foreground mt-1 text-sm'>
						Permanently delete your account and all associated data. This action cannot be undone.
					</p>
				</div>
				<AlertDialog>
					<AlertDialogTrigger asChild>
						<Button variant='destructive' className='shrink-0' disabled={isDeleting}>
							{isDeleting ? <Loader2 className='mr-2 size-4 animate-spin' /> : null}
							Delete
						</Button>
					</AlertDialogTrigger>
					<AlertDialogContent>
						<AlertDialogHeader>
							<AlertDialogTitle>Are you absolutely sure?</AlertDialogTitle>
							<AlertDialogDescription>
								This action cannot be undone. This will permanently delete your account and remove all your data from
								our servers.
							</AlertDialogDescription>
						</AlertDialogHeader>
						<AlertDialogFooter>
							<AlertDialogCancel>Cancel</AlertDialogCancel>
							<AlertDialogAction
								onClick={handleDeleteAccount}
								className='bg-destructive text-destructive-foreground hover:bg-destructive/90'
							>
								Delete Account
							</AlertDialogAction>
						</AlertDialogFooter>
					</AlertDialogContent>
				</AlertDialog>
			</div>
		</div>
	);
}

function ChangePasswordButton() {
	const stack = useCardStack();

	return (
		<button
			type='button'
			className='bg-muted/30 hover:bg-muted/50 flex w-full items-center justify-between gap-4 rounded-xl p-6 text-left
				transition-colors'
			onClick={() => {
				stack.push({
					id: 'edit-password',
					title: 'Change Password',
					description: 'Enter your current password and choose a new one.',
					Component: EditPasswordCard,
					props: {},
					width: 480,
				});
			}}
		>
			<div className='space-y-1'>
				<p className='text-foreground text-sm font-medium'>Change Password</p>
				<p className='text-muted-foreground text-sm'>Update your account password for security</p>
			</div>
			<ChevronRight className='text-muted-foreground size-5' />
		</button>
	);
}

export function AccountSettingsRoute() {
	return (
		<div className='h-full overflow-y-auto'>
			<div className='mx-auto max-w-4xl px-6 py-8 lg:px-8 lg:py-10'>
				<PageHeaderWithIcon
					title='Account Settings'
					description='Manage your account preferences and security settings'
					icon={Settings}
				/>

				<div className='mt-12 space-y-16'>
					{/* Security Section */}
					<section
						className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
						style={{ animationDelay: '50ms' }}
					>
						<div className='mb-8'>
							<h2 className='text-foreground text-lg font-semibold tracking-tight'>Security</h2>
							<p className='text-muted-foreground mt-1 text-sm'>Manage your security preferences</p>
						</div>

						<div className='space-y-6'>
							<ChangePasswordButton />
						</div>
					</section>

					{/* Danger Zone Section */}
					<section
						className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
						style={{ animationDelay: '100ms' }}
					>
						<div className='mb-8'>
							<h2 className='text-destructive text-lg font-semibold tracking-tight'>Danger Zone</h2>
							<p className='text-muted-foreground mt-1 text-sm'>Irreversible and destructive actions</p>
						</div>

						<DeleteAccountSection />
					</section>
				</div>

				<div className='h-12' />
			</div>
		</div>
	);
}
