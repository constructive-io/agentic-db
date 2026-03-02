'use client';

import { useState } from 'react';
import { Loader2Icon } from 'lucide-react';

import { useDeleteOrganization, type OrganizationWithRole } from '@/lib/gql/hooks/schema-builder';
import {
	AlertDialog,
	AlertDialogContent,
	AlertDialogDescription,
	AlertDialogFooter,
	AlertDialogHeader,
	AlertDialogTitle,
} from '@/components/ui/alert-dialog';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { showErrorToast } from '@/components/ui/toast';
import { showSuccessToast } from '@/components/ui/toast';

interface DeleteOrganizationDialogProps {
	open: boolean;
	onOpenChange: (open: boolean) => void;
	organization: OrganizationWithRole | null;
	onSuccess?: () => void;
}

/**
 * Dialog for confirming organization deletion
 *
 * Only owners should be able to access this dialog.
 * The parent component is responsible for checking permissions.
 *
 * Requires typing the organization name to confirm deletion.
 */
export function DeleteOrganizationDialog({ open, onOpenChange, organization, onSuccess }: DeleteOrganizationDialogProps) {
	const [confirmName, setConfirmName] = useState('');

	const { deleteOrganization, isDeleting } = useDeleteOrganization({
		onSuccess: (result) => {
			showSuccessToast({
				message: 'Organization deleted',
				description: `"${result.deletedOrgName}" has been permanently deleted.`,
			});
			setConfirmName('');
			onOpenChange(false);
			onSuccess?.();
		},
		onError: (error) => {
			showErrorToast({
				message: 'Failed to delete organization',
				description: error.message,
			});
		},
	});

	const orgName = organization?.displayName || organization?.username || '';
	const canDelete = confirmName === orgName;

	const handleDelete = async () => {
		if (!organization || !canDelete) return;

		await deleteOrganization({
			orgId: organization.id,
			confirmName,
		});
	};

	const handleOpenChange = (newOpen: boolean) => {
		if (!isDeleting) {
			onOpenChange(newOpen);
			if (!newOpen) {
				setConfirmName('');
			}
		}
	};

	if (!organization) return null;

	return (
		<AlertDialog open={open} onOpenChange={handleOpenChange}>
			<AlertDialogContent className='sm:max-w-md gap-0 p-0 overflow-hidden'>
				{/* Header */}
				<AlertDialogHeader className='px-6 pt-6 pb-4'>
					<AlertDialogTitle className='text-lg font-semibold tracking-tight'>
						Delete organization
					</AlertDialogTitle>
					<AlertDialogDescription className='text-sm text-muted-foreground pt-1'>
						This will permanently delete{' '}
						<span className='font-medium text-foreground'>{orgName}</span>{' '}
						and cannot be undone.
					</AlertDialogDescription>
				</AlertDialogHeader>

				{/* Info section */}
				<div className='px-6 pb-5'>
					<div className='rounded-lg border border-border/60 bg-muted/30 p-4'>
						<p className='text-[13px] font-medium text-foreground/80 mb-2'>
							The following will be removed:
						</p>
						<ul className='text-[13px] text-muted-foreground space-y-1.5'>
							<li className='flex items-center gap-2'>
								<span className='h-1 w-1 rounded-full bg-muted-foreground/50' />
								Organization settings and configuration
							</li>
							<li className='flex items-center gap-2'>
								<span className='h-1 w-1 rounded-full bg-muted-foreground/50' />
								All member relationships
							</li>
							<li className='flex items-center gap-2'>
								<span className='h-1 w-1 rounded-full bg-muted-foreground/50' />
								Associated resources and permissions
							</li>
						</ul>
					</div>
				</div>

				{/* Form with confirmation input */}
				<form
					onSubmit={(e) => {
						e.preventDefault();
						if (canDelete && !isDeleting) {
							handleDelete();
						}
					}}
				>
					<div className='px-6 pb-6'>
						<label
							htmlFor='confirm-name'
							className='block text-[13px] text-muted-foreground mb-2'
						>
							Type <span className='font-mono text-foreground bg-muted px-1.5 py-0.5 rounded text-xs'>{orgName}</span> to confirm
						</label>
						<Input
							id='confirm-name'
							placeholder='Enter organization name'
							value={confirmName}
							onChange={(e) => setConfirmName(e.target.value)}
							disabled={isDeleting}
							autoComplete='off'
							autoFocus
							className='h-10'
						/>
					</div>

					{/* Footer */}
					<AlertDialogFooter className='px-6 py-4 bg-muted/30 border-t border-border/60'>
						<Button
							type='button'
							variant='ghost'
							onClick={() => handleOpenChange(false)}
							disabled={isDeleting}
							className='h-9'
						>
							Cancel
						</Button>
						<Button
							type='submit'
							variant='destructive'
							disabled={isDeleting || !canDelete}
							className='h-9'
						>
							{isDeleting && <Loader2Icon className='mr-2 h-3.5 w-3.5 animate-spin' />}
							{isDeleting ? 'Deleting...' : 'Delete organization'}
						</Button>
					</AlertDialogFooter>
				</form>
			</AlertDialogContent>
		</AlertDialog>
	);
}
