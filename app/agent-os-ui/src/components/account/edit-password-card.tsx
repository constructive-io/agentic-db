'use client';

import { useState } from 'react';
import { Button } from '@/components/ui/button';
import { Field } from '@/components/ui/field';
import { InputGroup, InputGroupInput } from '@/components/ui/input-group';
import type { CardComponent } from '@/components/ui/stack';
import { showErrorToast, showSuccessToast } from '@/components/ui/toast';
import { Loader2 } from 'lucide-react';

import { useSetPasswordMutation } from '@sdk/api';

export type EditPasswordCardProps = {
	onSuccess?: () => void;
};

export const EditPasswordCard: CardComponent<EditPasswordCardProps> = ({ onSuccess, card }) => {
	const [currentPassword, setCurrentPassword] = useState('');
	const [newPassword, setNewPassword] = useState('');
	const [confirmPassword, setConfirmPassword] = useState('');

	const { mutateAsync: setPassword, isPending: isSettingPassword, error } = useSetPasswordMutation({
		selection: { fields: { result: true } },
	});

	const canSave =
		currentPassword.length > 0 && newPassword.length >= 8 && newPassword === confirmPassword && !isSettingPassword;

	const handleSave = async () => {
		if (!canSave) return;

		try {
			await setPassword({ input: { currentPassword, newPassword } });
			showSuccessToast({ message: 'Password updated', description: 'Your password has been changed successfully.' });
			onSuccess?.();
			card.close();
		} catch (err) {
			console.error('Failed to set password:', err);
			showErrorToast({
				message: 'Failed to update password',
				description: err instanceof Error ? err.message : 'An error occurred while changing your password.',
			});
		}
	};

	return (
		<div className='flex h-full flex-col'>
			<form
				onSubmit={(e) => {
					e.preventDefault();
					handleSave();
				}}
				className='flex flex-1 flex-col'
			>
				<div className='flex-1 space-y-4 p-4'>
					<input type='password' autoComplete='new-password' style={{ display: 'none' }} />
					<Field label='Current Password'>
						<InputGroup>
							<InputGroupInput
								type='password'
								value={currentPassword}
								onChange={(e) => setCurrentPassword(e.target.value)}
							/>
						</InputGroup>
					</Field>
					<Field label='New Password' description='Must be at least 8 characters'>
						<InputGroup>
							<InputGroupInput type='password' value={newPassword} onChange={(e) => setNewPassword(e.target.value)} />
						</InputGroup>
					</Field>
					<Field
						label='Confirm New Password'
						error={confirmPassword && newPassword !== confirmPassword ? 'Passwords do not match' : undefined}
					>
						<InputGroup>
							<InputGroupInput
								type='password'
								value={confirmPassword}
								onChange={(e) => setConfirmPassword(e.target.value)}
								aria-invalid={confirmPassword && newPassword !== confirmPassword ? true : undefined}
							/>
						</InputGroup>
					</Field>
					{error && <p className='text-destructive text-sm'>{error.message}</p>}
				</div>

				<div className='flex justify-end gap-2 border-t px-4 py-3'>
					<Button variant='outline' onClick={() => card.close()}>
						Cancel
					</Button>
					<Button onClick={handleSave} disabled={!canSave}>
						{isSettingPassword ? (
							<>
								<Loader2 className='mr-2 h-4 w-4 animate-spin' />
								Saving...
							</>
						) : (
							'Save Password'
						)}
					</Button>
				</div>
			</form>
		</div>
	);
};
