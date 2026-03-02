'use client';

import { Check } from 'lucide-react';

import type { OrgClaimedInvite } from '@/lib/gql/hooks/schema-builder';
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table';
import { RoleBadge } from '@/components/members/role-badge';

import { InviterAvatar } from './inviter-avatar';
import { formatDate } from './invites.utils';

interface ClaimedInvitesTableProps {
	claimedInvites: OrgClaimedInvite[];
	isLoading: boolean;
	error: Error | null;
}

export function ClaimedInvitesTable({ claimedInvites, isLoading, error }: ClaimedInvitesTableProps) {
	return (
		<>
			{error && (
				<div className='bg-card border-destructive/40 text-destructive rounded-xl border p-4 text-sm'>
					Failed to load claimed invites: {error.message}
				</div>
			)}
			<div className='bg-card border-border/60 overflow-x-auto rounded-xl border'>
				<Table className='min-w-[700px]'>
					<TableHeader>
						<TableRow className='hover:bg-transparent'>
							<TableHead className='w-[35%] pl-6'>Email</TableHead>
							<TableHead className='w-[20%]'>Role</TableHead>
							<TableHead className='w-[25%]'>Invited By</TableHead>
							<TableHead className='w-[20%]'>Claimed</TableHead>
						</TableRow>
					</TableHeader>
					<TableBody>
						{isLoading ? (
							<TableRow>
								<TableCell colSpan={4} className='text-muted-foreground py-8 text-center'>
									Loading claimed invites...
								</TableCell>
							</TableRow>
						) : claimedInvites.length === 0 ? (
							<TableRow>
								<TableCell colSpan={4} className='text-muted-foreground py-8 text-center'>
									No claimed invites
								</TableCell>
							</TableRow>
						) : (
							claimedInvites.map((invite) => (
								<TableRow key={invite.id}>
									<TableCell className='pl-6'>
										<div className='flex items-center gap-3'>
											<div className='flex size-8 shrink-0 items-center justify-center rounded-full bg-green-500/10'>
												<Check className='size-4 text-green-600' />
											</div>
											<span className='font-medium'>{invite.email || '—'}</span>
										</div>
									</TableCell>
									<TableCell>
										<RoleBadge role={invite.role} />
									</TableCell>
									<TableCell>
										<InviterAvatar inviter={invite.sender} />
									</TableCell>
									<TableCell className='text-muted-foreground'>{formatDate(invite.createdAt)}</TableCell>
								</TableRow>
							))
						)}
					</TableBody>
				</Table>
			</div>
		</>
	);
}
