'use client';

import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table';
import { Tooltip, TooltipContent, TooltipProvider, TooltipTrigger } from '@/components/ui/tooltip';
import { CalendarPlus, CheckCircle2, Clock, Send, X, XCircle } from 'lucide-react';

import type { OrgInvite, OrgInviteStatus } from '@/lib/gql/hooks/schema-builder';
import { RoleBadge } from '@/components/members/role-badge';

import { InviterAvatar } from './inviter-avatar';
import { formatDate } from './invites.utils';

function StatusBadge({ status }: { status: OrgInviteStatus }) {
	if (status === 'pending') {
		return (
			<Badge variant='info' className='gap-1 px-1.5 py-0.5'>
				<Clock className='size-3' />
				Pending
			</Badge>
		);
	}
	if (status === 'expired') {
		return (
			<Badge variant='error' className='gap-1 px-1.5 py-0.5'>
				<XCircle className='size-3' />
				Expired
			</Badge>
		);
	}
	return (
		<Badge variant='success' className='gap-1 px-1.5 py-0.5'>
			<CheckCircle2 className='size-3' />
			Claimed
		</Badge>
	);
}

interface ActiveInvitesTableProps {
	invites: OrgInvite[];
	isLoading: boolean;
	error: Error | null;
	canManageInvites: boolean;
	isBusy: boolean;
	onExtend: (invite: OrgInvite) => void;
	onCancel: (invite: OrgInvite) => void;
}

export function ActiveInvitesTable({
	invites,
	isLoading,
	error,
	canManageInvites,
	isBusy,
	onExtend,
	onCancel,
}: ActiveInvitesTableProps) {
	return (
		<>
			{error && (
				<div className='bg-card border-destructive/40 text-destructive rounded-xl border p-4 text-sm'>
					Failed to load invites: {error.message}
				</div>
			)}
			<div className='bg-card border-border/60 overflow-x-auto rounded-xl border'>
				<Table className='min-w-[900px]'>
					<TableHeader>
						<TableRow className='hover:bg-transparent'>
							<TableHead className='w-[25%] pl-6'>Email</TableHead>
							<TableHead className='w-[15%]'>Role</TableHead>
							<TableHead className='w-[20%]'>Invited By</TableHead>
							<TableHead className='w-[15%]'>Status</TableHead>
							<TableHead className='w-[10%]'>Expires</TableHead>
							<TableHead className='w-[15%] pr-6 text-right'>Actions</TableHead>
						</TableRow>
					</TableHeader>
					<TableBody>
						{isLoading ? (
							<TableRow>
								<TableCell colSpan={6} className='text-muted-foreground py-8 text-center'>
									Loading invites...
								</TableCell>
							</TableRow>
						) : invites.length === 0 ? (
							<TableRow>
								<TableCell colSpan={6} className='text-muted-foreground py-8 text-center'>
									No active invites
								</TableCell>
							</TableRow>
						) : (
							invites.map((invite) => (
								<TableRow key={invite.id}>
									<TableCell className='pl-6'>
										<div className='flex items-center gap-3'>
											<div className='bg-muted flex size-8 items-center justify-center rounded-full'>
												<Send className='text-muted-foreground size-4' />
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
									<TableCell>
										<StatusBadge status={invite.status} />
									</TableCell>
									<TableCell className='text-muted-foreground'>{formatDate(invite.expiresAt)}</TableCell>
									<TableCell className='pr-4 text-right'>
										<TooltipProvider>
											<div className='flex items-center justify-end gap-1'>
												<Tooltip>
													<TooltipTrigger asChild>
														<Button
															variant='ghost'
															size='icon'
															aria-label='Extend invite by 7 days'
															className='text-muted-foreground hover:text-foreground size-6 rounded-lg'
															disabled={!canManageInvites || isBusy}
															onClick={() => onExtend(invite)}
														>
															<CalendarPlus className='h-4 w-4' />
														</Button>
													</TooltipTrigger>
													<TooltipContent>
														<p>Extend invite by 7 days</p>
													</TooltipContent>
												</Tooltip>
												{invite.status !== 'expired' && canManageInvites && (
													<Tooltip>
														<TooltipTrigger asChild>
															<Button
																variant='ghost'
																size='icon'
																aria-label='Cancel invite'
																className='text-muted-foreground hover:text-destructive size-6 rounded-lg'
																disabled={isBusy}
																onClick={() => onCancel(invite)}
															>
																<X className='h-4 w-4' />
															</Button>
														</TooltipTrigger>
														<TooltipContent>
															<p>Cancel invite</p>
														</TooltipContent>
													</Tooltip>
												)}
											</div>
										</TooltipProvider>
									</TableCell>
								</TableRow>
							))
						)}
					</TableBody>
				</Table>
			</div>
		</>
	);
}
