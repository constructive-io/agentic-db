'use client';

import { useEffect, useState } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import type { CardComponent } from '@/components/ui/stack';
import { showErrorToast, showSuccessToast } from '@/components/ui/toast';
import { Loader2Icon, SettingsIcon } from 'lucide-react';

import { useUpdateOrganization, type OrganizationWithRole } from '@/lib/gql/hooks/schema-builder';

export type EditOrganizationCardProps = {
	organization: OrganizationWithRole;
	onSuccess?: () => void;
};

export const EditOrganizationCard: CardComponent<EditOrganizationCardProps> = ({ organization, onSuccess, card }) => {
	const [displayName, setDisplayName] = useState('');
	const [username, setUsername] = useState('');

	const { updateOrganization, isUpdating } = useUpdateOrganization({
		onSuccess: () => {
			showSuccessToast({
				message: 'Organization updated',
				description: 'Your changes have been saved successfully.',
			});
			onSuccess?.();
			card.close();
		},
		onError: (error) => {
			showErrorToast({
				message: 'Failed to update organization',
				description: error.message,
			});
		},
	});

	// Populate form when organization changes - use specific fields to avoid object reference changes
	useEffect(() => {
		if (organization) {
			setDisplayName(organization.displayName || '');
			setUsername(organization.username || '');
		}
	}, [organization?.id, organization?.displayName, organization?.username]);

	const handleSubmit = async (e: React.FormEvent) => {
		e.preventDefault();

		if (!organization) return;

		if (!displayName.trim()) {
			showErrorToast({
				message: 'Name is required',
				description: 'Please enter a name for the organization.',
			});
			return;
		}

		// Determine what changed
		const userChanges: { displayName?: string; username?: string } = {};

		if (displayName.trim() !== (organization.displayName || '')) {
			userChanges.displayName = displayName.trim();
		}
		if (username.trim() !== (organization.username || '')) {
			userChanges.username = username.trim() || undefined;
		}

		// Only update if there are changes
		const hasUserChanges = Object.keys(userChanges).length > 0;

		if (!hasUserChanges) {
			card.close();
			return;
		}

		await updateOrganization({
			orgId: organization.id,
			settingsId: organization.settings?.id,
			user: userChanges,
		});
	};

	return (
		<div className='flex h-full flex-col'>
			<form onSubmit={handleSubmit} className='flex flex-1 flex-col'>
				<div className='flex-1 space-y-4 p-4'>
					{/* Basic Fields */}
					<div className='space-y-4'>
						<div className='grid gap-2'>
							<Label htmlFor='edit-displayName'>
								Organization Name <span className='text-destructive'>*</span>
							</Label>
							<Input
								id='edit-displayName'
								placeholder='Acme Inc'
								value={displayName}
								onChange={(e) => setDisplayName(e.target.value)}
								disabled={isUpdating}
								autoComplete='off'
								autoFocus
							/>
						</div>

						<div className='grid gap-2'>
							<Label htmlFor='edit-username'>
								Username <span className='text-muted-foreground text-xs'>(optional)</span>
							</Label>
							<Input
								id='edit-username'
								placeholder='acme-inc'
								value={username}
								onChange={(e) => setUsername(e.target.value.toLowerCase().replace(/[^a-z0-9-]/g, ''))}
								disabled={isUpdating}
								autoComplete='off'
							/>
							<p className='text-muted-foreground text-xs'>
								URL-friendly identifier. Letters, numbers, and hyphens only.
							</p>
						</div>
					</div>
				</div>

				<div className='flex justify-end gap-2 border-t px-4 py-3'>
					<Button type='button' variant='outline' disabled={isUpdating} onClick={() => card.close()}>
						Cancel
					</Button>
					<Button type='submit' disabled={isUpdating || !displayName.trim()}>
						{isUpdating && <Loader2Icon className='h-4 w-4 animate-spin' />}
						{isUpdating ? 'Saving...' : 'Save Changes'}
					</Button>
				</div>
			</form>
		</div>
	);
};
