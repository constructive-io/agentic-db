'use client';

import { useState } from 'react';
import { Button } from '@/components/ui/button';
import { useCardStack } from '@/components/ui/stack';
import { toast } from '@/components/ui/toast';
import { Mail, Send } from 'lucide-react';

import {
	useCancelOrgInvite,
	useExtendOrgInvite,
	useOrgClaimedInvites,
	useOrgInvites,
	useSendOrgInvite,
	type OrganizationWithRole,
	type OrgInvite,
} from '@/lib/gql/hooks/schema-builder';
import { PageHeaderWithIcon } from '@/components/shared/page-header-with-icon';

import { ActiveInvitesTable } from './active-invites-table';
import { ClaimedInvitesTable } from './claimed-invites-table';
import { InvitesPagination } from './invites-pagination';
import { SendInviteCard } from './send-invite-card';

const ITEMS_PER_PAGE = 5;

interface InvitesRouteProps {
	orgId: string;
	orgName?: string;
	organization: OrganizationWithRole;
}

export function InvitesRoute({ orgId, orgName = 'Organization', organization }: InvitesRouteProps) {
	const stack = useCardStack();
	const [activePage, setActivePage] = useState(1);
	const [claimedPage, setClaimedPage] = useState(1);

	const isSelfOrg = organization.isSelfOrg;
	const canViewInvites = organization.role === 'owner' || organization.role === 'admin';
	const canManageInvites = canViewInvites;

	const activeOffset = (activePage - 1) * ITEMS_PER_PAGE;
	const claimedOffset = (claimedPage - 1) * ITEMS_PER_PAGE;

	const {
		invites: activeInvites,
		totalCount: activeTotalCount,
		isLoading: isActiveLoading,
		error: activeError,
	} = useOrgInvites({ orgId, first: ITEMS_PER_PAGE, offset: activeOffset, enabled: canViewInvites });

	const {
		claimedInvites,
		totalCount: claimedTotalCount,
		isLoading: isClaimedLoading,
		error: claimedError,
	} = useOrgClaimedInvites({ orgId, first: ITEMS_PER_PAGE, offset: claimedOffset, enabled: canViewInvites });

	const { sendInvite, isSending } = useSendOrgInvite();
	const { cancelInvite, isCancelling } = useCancelOrgInvite();
	const { extendInvite, isExtending } = useExtendOrgInvite();
	const isBusy = isCancelling || isExtending;

	const activeTotalPages = Math.max(1, Math.ceil(activeTotalCount / ITEMS_PER_PAGE));
	const claimedTotalPages = Math.max(1, Math.ceil(claimedTotalCount / ITEMS_PER_PAGE));

	const handleExtend = async (invite: OrgInvite) => {
		try {
			const currentExpiryTime = Date.parse(invite.expiresAt);
			const baseTime = Number.isFinite(currentExpiryTime) ? currentExpiryTime : Date.now();
			const expiresAt = new Date(baseTime + 7 * 24 * 60 * 60 * 1000).toISOString();
			await extendInvite({ orgId, inviteId: invite.id, expiresAt });
			toast.success({ message: 'Invite extended by 7 days', description: invite.email || 'Invite' });
		} catch (e) {
			toast.error({ message: 'Failed to extend invite', description: (e as Error)?.message });
		}
	};

	const handleCancel = async (invite: OrgInvite) => {
		try {
			await cancelInvite({ orgId, inviteId: invite.id });
			toast.success({ message: 'Invite cancelled', description: invite.email || 'Invite' });
		} catch (e) {
			toast.error({ message: 'Failed to cancel invite', description: (e as Error)?.message });
		}
	};

	const headerDescription = isSelfOrg
		? `Personal workspace for ${orgName}`
		: `${activeTotalCount} active invite${activeTotalCount !== 1 ? 's' : ''}, ${claimedTotalCount} claimed`;

	return (
		<div className='h-full overflow-y-auto'>
			<div className='mx-auto max-w-6xl px-6 py-8 lg:px-8 lg:py-10'>
				<PageHeaderWithIcon
					title='Invites'
					description={headerDescription}
					icon={Mail}
					actions={
						<Button
							className='gap-2'
							onClick={() => {
								stack.push({
									id: 'send-invite',
									title: 'Send Invite',
									description: 'Send an invitation to join your organization',
									Component: SendInviteCard,
									props: {
										entityId: orgId,
										enabled: canManageInvites,
										isSending,
										onSendInvite: async ({ entityId, email, role, expiresAt, message }) => {
											await sendInvite({ orgId: entityId!, email, expiresAt });
											setActivePage(1);
										},
									},
									width: 480,
								});
							}}
							disabled={!canManageInvites}
						>
							<Send className='h-4 w-4' />
							Send Invite
						</Button>
					}
				/>

				{!canViewInvites && !isSelfOrg && (
					<section
						className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
						style={{ animationDelay: '100ms' }}
					>
						<div className='bg-card border-border/60 rounded-xl border p-4 text-sm'>
							You do not have permission to view invites for this organization.
						</div>
					</section>
				)}

				{canViewInvites && (
					<div className='space-y-10'>
						<section
							className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards space-y-4 duration-500'
							style={{ animationDelay: '100ms' }}
						>
							<h2 className='text-foreground text-base font-semibold'>Active Invites</h2>
							<ActiveInvitesTable
								invites={activeInvites}
								isLoading={isActiveLoading}
								error={activeError}
								canManageInvites={canManageInvites}
								isBusy={isBusy}
								onExtend={handleExtend}
								onCancel={handleCancel}
							/>
							<InvitesPagination currentPage={activePage} totalPages={activeTotalPages} onPageChange={setActivePage} />
						</section>

						<section
							className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards space-y-4 duration-500'
							style={{ animationDelay: '150ms' }}
						>
							<h2 className='text-foreground text-base font-semibold'>Claimed Invites</h2>
							<ClaimedInvitesTable claimedInvites={claimedInvites} isLoading={isClaimedLoading} error={claimedError} />
							<InvitesPagination
								currentPage={claimedPage}
								totalPages={claimedTotalPages}
								onPageChange={setClaimedPage}
							/>
						</section>
					</div>
				)}

				<div className='h-10' />
			</div>
		</div>
	);
}
