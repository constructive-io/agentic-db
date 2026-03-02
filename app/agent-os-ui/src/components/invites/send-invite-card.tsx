'use client';

import { useState } from 'react';
import { Alert, AlertDescription } from '@/components/ui/alert';
import { Button } from '@/components/ui/button';
import { Field } from '@/components/ui/field';
import { InputGroup, InputGroupInput, InputGroupTextarea } from '@/components/ui/input-group';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import type { CardComponent } from '@/components/ui/stack';
import { toast } from '@/components/ui/toast';
import { Info } from 'lucide-react';

import type { OrgInviteRole } from '@/lib/gql/hooks/schema-builder';

import { EXPIRY_OPTIONS, ROLE_OPTIONS } from './invites.types';

export type SendInviteCardProps = {
	entityId?: string;
	enabled?: boolean;
	isSending: boolean;
	onSendInvite: (params: {
		entityId?: string;
		email: string;
		role: OrgInviteRole;
		expiresAt: string;
		message?: string;
	}) => Promise<void>;
};

export const SendInviteCard: CardComponent<SendInviteCardProps> = ({
	entityId,
	enabled = true,
	isSending,
	onSendInvite,
	card,
}) => {
	const [email, setEmail] = useState('');
	const [role, setRole] = useState<OrgInviteRole>('member');
	const [expiresIn, setExpiresIn] = useState<string>('7');
	const [message, setMessage] = useState('');

	const selectedRole = ROLE_OPTIONS.find((r) => r.value === role);

	const handleSubmit = async (e: React.FormEvent) => {
		e.preventDefault();

		if (!enabled) {
			toast.error({ message: 'You do not have permission to send invites' });
			return;
		}

		if (!email.trim()) {
			toast.error({ message: 'Email is required' });
			return;
		}

		const days = Number(expiresIn);
		const expiresAt = new Date(Date.now() + (Number.isFinite(days) ? days : 7) * 24 * 60 * 60 * 1000).toISOString();

		try {
			await onSendInvite({
				...(entityId && { entityId }),
				email: email.trim(),
				role,
				expiresAt,
				message: message.trim() || undefined,
			});
			toast.success({
				message: 'Invite sent',
				description: `An invitation has been created for ${email.trim()}`,
			});
			card.close();
		} catch (err) {
			toast.error({ message: 'Failed to send invite', description: (err as Error)?.message });
		}
	};

	return (
		<form onSubmit={handleSubmit} className='flex h-full flex-col'>
			<div className='flex-1 space-y-4 p-4'>
				<Field label='Email Address' required>
					<InputGroup>
						<InputGroupInput
							type='email'
							placeholder='colleague@example.com'
							value={email}
							onChange={(e) => setEmail(e.target.value)}
							required
						/>
					</InputGroup>
				</Field>

				<Field label='Role' required description={selectedRole?.description}>
					<Select value={role} onValueChange={(value) => setRole(value as OrgInviteRole)}>
						<SelectTrigger>
							<SelectValue placeholder='Select a role' />
						</SelectTrigger>
						<SelectContent position='popper' sideOffset={4}>
							{ROLE_OPTIONS.map((option) => (
								<SelectItem key={option.value} value={option.value}>
									{option.label}
								</SelectItem>
							))}
						</SelectContent>
					</Select>
				</Field>

				<Field label='Invite Expires In'>
					<Select value={expiresIn} onValueChange={setExpiresIn}>
						<SelectTrigger>
							<SelectValue placeholder='Select expiry' />
						</SelectTrigger>
						<SelectContent position='popper' sideOffset={4}>
							{EXPIRY_OPTIONS.map((option) => (
								<SelectItem key={option.value} value={option.value}>
									{option.label}
								</SelectItem>
							))}
						</SelectContent>
					</Select>
				</Field>

				<Field label='Personal Message (Optional)'>
					<InputGroup>
						<InputGroupTextarea
							placeholder='Add a personal note to the invitation...'
							value={message}
							onChange={(e) => setMessage(e.target.value)}
							rows={3}
						/>
					</InputGroup>
				</Field>

				<Alert className='border-primary/20 bg-primary/5'>
					<Info className='text-primary size-4' />
					<AlertDescription className='text-muted-foreground text-sm'>
						The invitee will receive an email with a link to join your organization. They will have {expiresIn} day
						{expiresIn !== '1' ? 's' : ''} to accept the invitation.
					</AlertDescription>
				</Alert>
			</div>

			<div className='flex justify-end gap-2 border-t px-4 py-3'>
				<Button type='button' variant='outline' onClick={() => card.close()}>
					Cancel
				</Button>
				<Button type='submit' disabled={isSending || !enabled}>
					{isSending ? 'Sending...' : 'Send Invite'}
				</Button>
			</div>
		</form>
	);
};
