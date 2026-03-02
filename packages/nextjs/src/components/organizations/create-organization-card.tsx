'use client';

import { useState } from 'react';
import { Button } from '@/components/ui/button';
import { Field } from '@/components/ui/field';
import { InputGroup, InputGroupInput } from '@/components/ui/input-group';
import type { CardComponent } from '@/components/ui/stack';
import { showErrorToast, showSuccessToast } from '@/components/ui/toast';
import { BuildingIcon, Loader2Icon } from 'lucide-react';

import { useCreateOrganization } from '@/lib/gql/hooks/schema-builder';

export type CreateOrganizationCardProps = {
	onSuccess?: () => void;
};

export const CreateOrganizationCard: CardComponent<CreateOrganizationCardProps> = ({ onSuccess, card }) => {
	const [displayName, setDisplayName] = useState('');
	const [username, setUsername] = useState('');

	const { createOrganization, isCreating } = useCreateOrganization({
		onSuccess: (result) => {
			showSuccessToast({
				message: 'Organization created',
				description: `"${result.organization.displayName}" has been created successfully.`,
			});
			onSuccess?.();
			card.close();
		},
		onError: (error) => {
			showErrorToast({
				message: 'Failed to create organization',
				description: error.message,
			});
		},
	});

	const handleSubmit = async (e: React.FormEvent) => {
		e.preventDefault();

		if (!displayName.trim()) {
			showErrorToast({
				message: 'Name is required',
				description: 'Please enter a name for the organization.',
			});
			return;
		}

		await createOrganization({
			displayName: displayName.trim(),
			username: username.trim() || undefined,
		});
	};

	return (
		<div className='flex h-full flex-col'>
			<form onSubmit={handleSubmit} className='flex flex-1 flex-col'>
				<div className='flex-1 space-y-4 p-4'>
					{/* Required Fields */}
					<div className='space-y-4'>
						<Field label='Organization Name' required>
							<InputGroup>
								<InputGroupInput
									placeholder='Acme Inc'
									value={displayName}
									onChange={(e) => setDisplayName(e.target.value)}
									disabled={isCreating}
									autoComplete='off'
									autoFocus
									data-testid='orgs-create-name'
								/>
							</InputGroup>
						</Field>

						<Field label='Username' description='URL-friendly identifier. Letters, numbers, and hyphens only.'>
							<InputGroup>
								<InputGroupInput
									placeholder='acme-inc'
									value={username}
									onChange={(e) => setUsername(e.target.value.toLowerCase().replace(/[^a-z0-9-]/g, ''))}
									disabled={isCreating}
									autoComplete='off'
									data-testid='orgs-create-username'
								/>
							</InputGroup>
						</Field>
					</div>
				</div>

				<div className='flex justify-end gap-2 border-t px-4 py-3'>
					<Button
						type='button'
						variant='outline'
						disabled={isCreating}
						onClick={() => card.close()}
						data-testid='orgs-create-cancel'
					>
						Cancel
					</Button>
					<Button type='submit' disabled={isCreating || !displayName.trim()} data-testid='orgs-create-submit'>
						{isCreating && <Loader2Icon className='h-4 w-4 animate-spin' />}
						{isCreating ? 'Creating...' : 'Create Organization'}
					</Button>
				</div>
			</form>
		</div>
	);
};
