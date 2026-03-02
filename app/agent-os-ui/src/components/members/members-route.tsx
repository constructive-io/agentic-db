'use client';

import { useState } from 'react';
import { RiUserAddLine } from '@remixicon/react';
import { AlertCircle, AtSign, CheckCircle2, Clock, MoreVertical, Slash, Users, XCircle } from 'lucide-react';
import { useRouter } from 'next/navigation';

import { PageHeaderWithIcon } from '@/components/shared/page-header-with-icon';
import { Avatar, AvatarFallback } from '@/components/ui/avatar';
import { Button } from '@/components/ui/button';
import {
	DropdownMenu,
	DropdownMenuContent,
	DropdownMenuItem,
	DropdownMenuSeparator,
	DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu';
import {
	Pagination,
	PaginationContent,
	PaginationItem,
	PaginationLink,
	PaginationNext,
	PaginationPrevious,
} from '@/components/ui/pagination';
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table';
import { toast } from '@/components/ui/toast';
import {
	useOrgMembers,
	type OrgMember,
	type OrgMemberStatus,
	type OrganizationWithRole,
} from '@/lib/gql/hooks/schema-builder';
import {
	useDeleteOrgMembershipMutation,
	useUpdateOrgMembershipMutation,
} from '@sdk/api';
import { useAppStore } from '@/store/app-store';

import { RoleBadge } from './role-badge';

const ITEMS_PER_PAGE = 10;

function getInitials(input: string | null | undefined): string {
	if (!input) return '--';
	const parts = input.trim().split(/\s+/).filter(Boolean);
	if (parts.length === 0) return '--';
	if (parts.length === 1) return parts[0].slice(0, 2).toUpperCase();
	return (parts[0][0] + parts[1][0]).toUpperCase();
}

function StatusBadge({ status }: { status: OrgMemberStatus }) {
	switch (status) {
		case 'active':
			return (
				<div className='text-success-foreground flex items-center gap-1.5 text-sm'>
					<CheckCircle2 className='size-4' />
					Active
				</div>
			);
		case 'inactive':
			return (
				<div className='text-destructive-foreground flex items-center gap-1.5 text-sm'>
					<XCircle className='size-4' />
					Inactive
				</div>
			);
		case 'pending_approval':
			return (
				<div className='text-warning-foreground flex items-center gap-1.5 text-sm'>
					<Clock className='size-4' />
					Pending Approval
				</div>
			);
		case 'pending_approval':
			return (
				<div className='text-warning-foreground flex items-center gap-1.5 text-sm'>
					<Clock className='size-4' />
					Pending Approval
				</div>
			);
		case 'banned':
			return (
				<div className='text-destructive-foreground flex items-center gap-1.5 text-sm'>
					<Slash className='size-4' />
					Banned
				</div>
			);
		case 'disabled':
			return (
				<div className='text-muted-foreground flex items-center gap-1.5 text-sm'>
					<AlertCircle className='size-4' />
					Disabled
				</div>
			);
	}
}

function PaginationControls({
	currentPage,
	totalPages,
	onPageChange,
}: {
	currentPage: number;
	totalPages: number;
	onPageChange: (page: number) => void;
}) {
	if (totalPages <= 1) return null;

	return (
		<Pagination className='mt-4 justify-end'>
			<PaginationContent>
				<PaginationItem>
					<PaginationPrevious
						onClick={() => onPageChange(currentPage - 1)}
						className={currentPage === 1 ? 'pointer-events-none opacity-50' : 'cursor-pointer'}
					/>
				</PaginationItem>
				{Array.from({ length: totalPages }, (_, i) => i + 1).map((page) => (
					<PaginationItem key={page}>
						<PaginationLink
							onClick={() => onPageChange(page)}
							isActive={currentPage === page}
							className='cursor-pointer'
						>
							{page}
						</PaginationLink>
					</PaginationItem>
				))}
				<PaginationItem>
					<PaginationNext
						onClick={() => onPageChange(currentPage + 1)}
						className={currentPage === totalPages ? 'pointer-events-none opacity-50' : 'cursor-pointer'}
					/>
				</PaginationItem>
			</PaginationContent>
		</Pagination>
	);
}

function MemberActions({
	member,
	canManage,
	isCurrentUser,
	onToggleAdmin,
	onRemove,
}: {
	member: OrgMember;
	canManage: boolean;
	isCurrentUser: boolean;
	onToggleAdmin: (member: OrgMember) => void;
	onRemove: (member: OrgMember) => void;
}) {
	if (!canManage || isCurrentUser || member.flags.isOwner) return null;

	const isAdmin = member.flags.isAdmin;

	return (
		<DropdownMenu>
			<DropdownMenuTrigger asChild>
				<Button variant='ghost' size='icon' className='text-muted-foreground h-8 w-8'>
					<MoreVertical className='size-4' />
				</Button>
			</DropdownMenuTrigger>
			<DropdownMenuContent align='end'>
				<DropdownMenuItem onClick={() => onToggleAdmin(member)}>
					{isAdmin ? 'Remove admin' : 'Make admin'}
				</DropdownMenuItem>
				<DropdownMenuSeparator />
				<DropdownMenuItem variant='destructive' onClick={() => onRemove(member)}>
					Remove member
				</DropdownMenuItem>
			</DropdownMenuContent>
		</DropdownMenu>
	);
}

interface MembersRouteProps {
	orgId: string;
	orgName?: string;
	organization: OrganizationWithRole;
}

export function MembersRoute({ orgId, orgName = 'Organization', organization }: MembersRouteProps) {
	const router = useRouter();
	const isSelfOrg = organization.isSelfOrg;
	const canManageMembers = organization.role === 'owner' || organization.role === 'admin';

	const actorId = useAppStore(
		(state) => state.auth.user?.id || state.auth.token?.userId || null,
	);

	const [currentPage, setCurrentPage] = useState(1);
	const offset = (currentPage - 1) * ITEMS_PER_PAGE;

	const { members, totalCount, isLoading, error } = useOrgMembers({ orgId, first: ITEMS_PER_PAGE, offset });
	const { mutateAsync: updateMember, isPending: isUpdating } = useUpdateOrgMembershipMutation({
		selection: { fields: { id: true } },
	});
	const { mutateAsync: removeMember, isPending: isRemoving } = useDeleteOrgMembershipMutation({
		selection: { fields: { id: true } },
	});

	const totalPages = Math.max(1, Math.ceil(totalCount / ITEMS_PER_PAGE));

	const goToPage = (page: number) => {
		if (page >= 1 && page <= totalPages) {
			setCurrentPage(page);
		}
	};

	const onInviteClick = () => {
		router.push(`/orgs/${orgId}/invites`);
	};

	const onToggleAdmin = async (member: OrgMember) => {
		try {
			await updateMember({
				id: member.membershipId, orgMembershipPatch: { isAdmin: !member.flags.isAdmin },
			});
			toast.success({
				message: member.flags.isAdmin ? 'Removed admin role' : 'Granted admin role',
				description: member.displayName || member.username || 'Member',
			});
		} catch (e) {
			toast.error({ message: 'Failed to update member', description: (e as Error)?.message });
		}
	};

	const onRemove = async (member: OrgMember) => {
		try {
			await removeMember({ id: member.membershipId });
			toast.success({
				message: 'Removed member',
				description: member.displayName || member.username || 'Member',
			});
		} catch (e) {
			toast.error({ message: 'Failed to remove member', description: (e as Error)?.message });
		}
	};

	const isBusy = isUpdating || isRemoving;

	const headerDescription = isSelfOrg
		? `Personal workspace for ${orgName}`
		: `${totalCount} member${totalCount !== 1 ? 's' : ''} in your organization`;

	return (
		<div className='h-full overflow-y-auto'>
			<div className='mx-auto max-w-6xl px-6 py-8 lg:px-8 lg:py-10'>
				<PageHeaderWithIcon
					title='Members'
					description={headerDescription}
					icon={Users}
					actions={
						<Button className='gap-2' onClick={onInviteClick}>
							<RiUserAddLine className='h-4 w-4' />
							Invite Member
						</Button>
					}
				/>

				{error && (
					<section
						className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards mb-6 duration-500'
						style={{ animationDelay: '100ms' }}
					>
						<div className='bg-card border-destructive/40 text-destructive rounded-xl border p-4 text-sm'>
							Failed to load members: {error.message}
						</div>
					</section>
				)}

				<section
					className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
					style={{ animationDelay: '100ms' }}
				>
					<div className='bg-card border-border/60 overflow-x-auto rounded-xl border'>
						<Table className='min-w-[800px]'>
							<TableHeader>
								<TableRow className='hover:bg-transparent'>
									<TableHead className='w-[300px] pl-6'>Member</TableHead>
									<TableHead className='w-[120px]'>Role</TableHead>
									<TableHead className='w-[160px]'>Status</TableHead>
									<TableHead className='w-[120px]'>Account</TableHead>
									<TableHead className='w-[80px] pr-6 text-right'>Actions</TableHead>
								</TableRow>
							</TableHeader>
							<TableBody>
								{isLoading ? (
									<TableRow>
										<TableCell colSpan={5} className='text-muted-foreground py-8 text-center'>
											Loading members...
										</TableCell>
									</TableRow>
								) : members.length === 0 ? (
									<TableRow>
										<TableCell colSpan={5} className='text-muted-foreground py-8 text-center'>
											No members found
										</TableCell>
									</TableRow>
								) : (
									members.map((member) => (
										<TableRow key={member.membershipId}>
											<TableCell className='pl-6'>
												<div className='flex items-center gap-3'>
													<Avatar className='size-9'>
														<AvatarFallback className='bg-zinc-400 text-xs text-white'>
															{getInitials(member.displayName || member.username)}
														</AvatarFallback>
													</Avatar>
													<div className='min-w-0'>
														<p className='truncate font-medium'>
															{member.displayName || member.username || member.actorId}
														</p>
														<div className='text-muted-foreground flex items-center gap-1 text-sm'>
															<AtSign className='size-3' />
															<span className='truncate'>{member.username || '—'}</span>
														</div>
													</div>
												</div>
											</TableCell>
											<TableCell>
												<RoleBadge role={member.role} />
											</TableCell>
											<TableCell>
												<StatusBadge status={member.status} />
											</TableCell>
											<TableCell className='text-muted-foreground'>
												{member.actorId.slice(0, 8)}
											</TableCell>
											<TableCell className='pr-6 text-right'>
												<MemberActions
													member={member}
													canManage={canManageMembers && !isBusy}
													isCurrentUser={!!actorId && actorId === member.actorId}
													onToggleAdmin={onToggleAdmin}
													onRemove={onRemove}
												/>
											</TableCell>
										</TableRow>
									))
								)}
							</TableBody>
						</Table>
					</div>
					<PaginationControls currentPage={currentPage} totalPages={totalPages} onPageChange={goToPage} />
				</section>

				<div className='h-10' />
			</div>
		</div>
	);
}
