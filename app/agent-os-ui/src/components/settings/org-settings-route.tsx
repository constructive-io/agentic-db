'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { AlertCircle, ArrowRight, Check, Loader2Icon, Settings2 } from 'lucide-react';

import {
	useCreateMembershipPermissionDefault,
	useCreateOrgMembershipDefault,
	useDeleteOrganization,
	useMembershipPermissionDefault,
	useOrgMembershipDefault,
	useUpdateMembershipPermissionDefault,
	useUpdateOrganization,
	useUpdateOrgMembershipDefault,
	type OrganizationWithRole,
} from '@/lib/gql/hooks/schema-builder';
import { usePermissions } from '@/lib/gql/hooks/schema-builder/policies/use-permissions';
import {
	AlertDialog,
	AlertDialogCancel,
	AlertDialogContent,
	AlertDialogDescription,
	AlertDialogFooter,
	AlertDialogHeader,
	AlertDialogTitle,
} from '@/components/ui/alert-dialog';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Skeleton } from '@/components/ui/skeleton';
import { Switch } from '@/components/ui/switch';
import { showErrorToast, showSuccessToast } from '@/components/ui/toast';
import { PageHeaderWithIcon } from '@/components/shared/page-header-with-icon';

const parseBitmask = (bitmask: string): Set<number> => {
	const bits = new Set<number>();
	for (let i = 0; i < bitmask.length; i++) {
		if (bitmask[bitmask.length - 1 - i] === '1') {
			bits.add(i + 1);
		}
	}
	return bits;
};

const createBitmask = (bits: Set<number>): string => {
	const bitmask = new Array(24).fill('0');
	bits.forEach((bit) => {
		if (bit >= 1 && bit <= 24) {
			const position = 24 - bit;
			bitmask[position] = '1';
		}
	});
	return bitmask.join('');
};

interface OrgSettingsRouteProps {
	orgId: string;
	orgName?: string;
	organization: OrganizationWithRole;
}

export function OrgSettingsRoute({ orgId, orgName = 'Organization', organization }: OrgSettingsRouteProps) {
	const router = useRouter();
	const [deleteDialogOpen, setDeleteDialogOpen] = useState(false);
	const [deleteConfirmation, setDeleteConfirmation] = useState('');

	const isSelfOrg = organization.isSelfOrg;
	const canEdit = organization.role === 'owner' || organization.role === 'admin' || isSelfOrg;
	const canDelete = organization.role === 'owner' && !isSelfOrg;

	const [displayName, setDisplayName] = useState(organization.displayName || orgName);
	const [legalName, setLegalName] = useState(organization.settings?.legalName || '');
	const [addressLineOne, setAddressLineOne] = useState(organization.settings?.addressLineOne || '');
	const [addressLineTwo, setAddressLineTwo] = useState(organization.settings?.addressLineTwo || '');
	const [city, setCity] = useState(organization.settings?.city || '');
	const [state, setState] = useState(organization.settings?.state || '');

	const hasGeneralChanges =
		displayName !== (organization.displayName || orgName) ||
		(!isSelfOrg &&
			((legalName || '') !== (organization.settings?.legalName || '') ||
				(addressLineOne || '') !== (organization.settings?.addressLineOne || '') ||
				(addressLineTwo || '') !== (organization.settings?.addressLineTwo || '') ||
				(city || '') !== (organization.settings?.city || '') ||
				(state || '') !== (organization.settings?.state || '')));

	const {
		membershipDefault,
		isLoading: isDefaultsLoading,
		error: defaultsError,
	} = useOrgMembershipDefault({
		orgId,
		enabled: canEdit && !isSelfOrg,
	});

	const [requireAdminApproval, setRequireAdminApproval] = useState(false);
	const [hasMemberChanges, setHasMemberChanges] = useState(false);

	const { data: permissionsData, isLoading: isLoadingPermissions } = usePermissions({ enabled: canEdit && !isSelfOrg });
	const membershipPermissions = permissionsData?.membershipPermissions ?? [];

	const {
		membershipPermissionDefault,
		isLoading: isLoadingPermissionDefault,
		error: permissionDefaultError,
	} = useMembershipPermissionDefault({
		entityId: orgId,
		enabled: canEdit && !isSelfOrg,
	});

	const initialPermissions = membershipPermissionDefault?.permissions
		? parseBitmask(membershipPermissionDefault.permissions)
		: new Set<number>();
	const [selectedPermissions, setSelectedPermissions] = useState<Set<number>>(initialPermissions);

	const { updateMembershipPermissionDefault, isUpdating: isUpdatingPermissionDefault } =
		useUpdateMembershipPermissionDefault();
	const { createMembershipPermissionDefault, isCreating: isCreatingPermissionDefault } =
		useCreateMembershipPermissionDefault();
	const isSavingPermissionDefaults = isUpdatingPermissionDefault || isCreatingPermissionDefault;

	useEffect(() => {
		setDisplayName(organization.displayName || orgName);
		setLegalName(organization.settings?.legalName || '');
		setAddressLineOne(organization.settings?.addressLineOne || '');
		setAddressLineTwo(organization.settings?.addressLineTwo || '');
		setCity(organization.settings?.city || '');
		setState(organization.settings?.state || '');
	}, [
		organization.displayName,
		organization.settings?.legalName,
		organization.settings?.addressLineOne,
		organization.settings?.addressLineTwo,
		organization.settings?.city,
		organization.settings?.state,
		orgName,
	]);

	useEffect(() => {
		if (!membershipDefault) return;
		setRequireAdminApproval(!membershipDefault.isApproved);
	}, [membershipDefault?.id, membershipDefault?.isApproved]);

	useEffect(() => {
		if (!membershipPermissionDefault?.permissions) return;
		const permissionBits = parseBitmask(membershipPermissionDefault.permissions);
		setSelectedPermissions(permissionBits);
	}, [membershipPermissionDefault?.id]);

	const hasPermissionChangesComputed = (() => {
		if (!canEdit || isSelfOrg || isLoadingPermissionDefault) return false;
		if (!membershipPermissionDefault) return selectedPermissions.size > 0;
		const currentBitmask = createBitmask(selectedPermissions);
		return currentBitmask !== membershipPermissionDefault.permissions;
	})();

	useEffect(() => {
		if (!canEdit || isSelfOrg) {
			setHasMemberChanges(false);
			return;
		}

		if (isDefaultsLoading) return;

		if (!membershipDefault) {
			setHasMemberChanges(true);
			return;
		}

		const currentIsApproved = !requireAdminApproval;
		const changed = currentIsApproved !== membershipDefault.isApproved;
		setHasMemberChanges(changed);
	}, [canEdit, isDefaultsLoading, isSelfOrg, membershipDefault, requireAdminApproval]);

	const { updateOrganization, isUpdating: isUpdatingOrg } = useUpdateOrganization({
		onSuccess: () => {
			showSuccessToast({ message: 'Settings saved' });
		},
		onError: (error) => {
			showErrorToast({ message: 'Failed to save settings', description: error.message });
		},
	});

	const { updateMembershipDefault, isUpdating: isUpdatingDefaults } = useUpdateOrgMembershipDefault();
	const { createMembershipDefault, isCreating: isCreatingDefaults } = useCreateOrgMembershipDefault();
	const isSavingMemberDefaults = isUpdatingDefaults || isCreatingDefaults;

	const { deleteOrganization, isDeleting } = useDeleteOrganization({
		onSuccess: () => {
			showSuccessToast({ message: 'Organization deleted' });
			router.push('/');
		},
		onError: (error) => {
			showErrorToast({ message: 'Failed to delete organization', description: error.message });
		},
	});

	const togglePermission = (bitnum: number) => {
		if (!bitnum) return;
		setSelectedPermissions((prev) => {
			const newSet = new Set(prev);
			if (newSet.has(bitnum)) {
				newSet.delete(bitnum);
			} else {
				newSet.add(bitnum);
			}
			return newSet;
		});
	};

	const saveGeneral = async () => {
		if (!canEdit) return;

		await updateOrganization({
			orgId,
			settingsId: organization.settings?.id,
			user: { displayName: displayName.trim() || undefined },
			settings: !isSelfOrg
				? {
						legalName: legalName.trim() || null,
						addressLineOne: addressLineOne.trim() || null,
						addressLineTwo: addressLineTwo.trim() || null,
						city: city.trim() || null,
						state: state.trim() || null,
					}
				: undefined,
		});
	};

	const saveMemberDefaults = async () => {
		if (!canEdit || isSelfOrg) return;

		try {
			const isApproved = !requireAdminApproval;

			if (membershipDefault) {
				await updateMembershipDefault({ id: membershipDefault.id, orgId, patch: { isApproved } });
				showSuccessToast({ message: 'Member settings updated' });
				return;
			}

			await createMembershipDefault({ orgId, isApproved });
			showSuccessToast({ message: 'Member settings created' });
		} catch (error) {
			showErrorToast({
				message: 'Failed to save member settings',
				description: error instanceof Error ? error.message : 'An unexpected error occurred.',
			});
		}
	};

	const savePermissionDefaults = async () => {
		if (!canEdit || isSelfOrg) return;

		try {
			const permissions = createBitmask(selectedPermissions);

			if (membershipPermissionDefault) {
				await updateMembershipPermissionDefault({
					id: membershipPermissionDefault.id,
					patch: { permissions, entityId: orgId },
				});
				showSuccessToast({ message: 'Default permissions updated' });
				return;
			}

			await createMembershipPermissionDefault({ entityId: orgId, permissions });
			showSuccessToast({ message: 'Default permissions created' });
		} catch (error) {
			showErrorToast({
				message: 'Failed to save default permissions',
				description: error instanceof Error ? error.message : 'An unexpected error occurred.',
			});
		}
	};

	const memberSettingsConfig = [
		{
			id: 'members-approved',
			label: 'Auto-approve members',
			description: 'New members are approved automatically. Turn off to require admin approval.',
			checked: !requireAdminApproval,
			onChange: (checked: boolean) => setRequireAdminApproval(!checked),
		},
	];

	return (
		<div className='h-full overflow-y-auto' data-testid='org-settings-route'>
			<div className='mx-auto max-w-4xl px-6 py-8 lg:px-8 lg:py-10'>
				<PageHeaderWithIcon title='Settings' description={`Manage settings for ${orgName}`} icon={Settings2} />

				<div className='mt-12 space-y-16'>
					{/* General Section */}
					<section
						data-testid='org-settings-general'
						className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
						style={{ animationDelay: '50ms' }}
					>
						<div className='mb-8'>
							<h2 className='text-foreground text-lg font-semibold tracking-tight'>General</h2>
							<p className='text-muted-foreground mt-1 text-sm'>Organization identity and profile information</p>
						</div>

						<div className='space-y-6'>
							<div className='flex flex-col space-y-1'>
								<Label htmlFor='org-name' className='text-foreground text-sm font-medium'>
									Display Name
								</Label>
								<Input
									id='org-name'
									value={displayName}
									onChange={(e) => setDisplayName(e.target.value)}
									disabled={!canEdit}
									placeholder='Enter organization name'
								/>
								<p className='text-muted-foreground text-xs'>How your organization appears across the platform</p>
							</div>

							{!isSelfOrg && (
								<>
									<div className='flex flex-col space-y-1'>
										<Label htmlFor='legal-name' className='text-foreground text-sm font-medium'>
											Legal Name
										</Label>
										<Input
											id='legal-name'
											value={legalName}
											onChange={(e) => setLegalName(e.target.value)}
											disabled={!canEdit}
											placeholder='Enter legal business name'
										/>
										<p className='text-muted-foreground text-xs'>
											Official registered name for invoices and legal documents
										</p>
									</div>

									<div className='flex flex-col space-y-1'>
										<Label htmlFor='address-line-one' className='text-foreground text-sm font-medium'>
											Address Line 1
										</Label>
										<Input
											id='address-line-one'
											value={addressLineOne}
											onChange={(e) => setAddressLineOne(e.target.value)}
											disabled={!canEdit}
											placeholder='Enter street address'
										/>
										<p className='text-muted-foreground text-xs'>Street address or P.O. Box</p>
									</div>

									<div className='flex flex-col space-y-1'>
										<Label htmlFor='address-line-two' className='text-foreground text-sm font-medium'>
											Address Line 2
										</Label>
										<Input
											id='address-line-two'
											value={addressLineTwo}
											onChange={(e) => setAddressLineTwo(e.target.value)}
											disabled={!canEdit}
											placeholder='Apartment, suite, unit, building, floor, etc.'
										/>
										<p className='text-muted-foreground text-xs'>(Optional)</p>
									</div>

									<div className='grid grid-cols-2 gap-4'>
										<div className='flex flex-col space-y-1'>
											<Label htmlFor='city' className='text-foreground text-sm font-medium'>
												City
											</Label>
											<Input
												id='city'
												value={city}
												onChange={(e) => setCity(e.target.value)}
												disabled={!canEdit}
												placeholder='Enter city'
											/>
										</div>

										<div className='flex flex-col space-y-1'>
											<Label htmlFor='state' className='text-foreground text-sm font-medium'>
												State
											</Label>
											<Input
												id='state'
												value={state}
												onChange={(e) => setState(e.target.value)}
												disabled={!canEdit}
												placeholder='Enter state'
											/>
										</div>
									</div>
								</>
							)}

							<div className='flex items-center justify-between pt-4'>
								<div className='flex items-center gap-2'>
									{hasGeneralChanges ? (
										<>
											<span className='relative flex h-2 w-2'>
												<span
													className='absolute inline-flex h-full w-full animate-ping rounded-full bg-amber-400
														opacity-75'
												/>
												<span className='relative inline-flex h-2 w-2 rounded-full bg-amber-500' />
											</span>
											<span className='text-foreground/70 text-xs font-medium'>Unsaved changes</span>
										</>
									) : (
										<>
											<Check className='text-success h-4 w-4' />
											<span className='text-muted-foreground text-xs'>All changes saved</span>
										</>
									)}
								</div>
								<Button
									size='sm'
									onClick={saveGeneral}
									disabled={!canEdit || isUpdatingOrg || !hasGeneralChanges}
									className='group gap-2'
								>
									{isUpdatingOrg ? (
										<>
											<Loader2Icon className='h-4 w-4 animate-spin' />
											Saving...
										</>
									) : (
										<>
											Save Changes
											<ArrowRight className='h-3.5 w-3.5 transition-transform group-hover:translate-x-0.5' />
										</>
									)}
								</Button>
							</div>
						</div>
					</section>

					{/* Member Settings Section */}
					{!isSelfOrg && (
						<section
							data-testid='org-settings-member-settings'
							className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
							style={{ animationDelay: '100ms' }}
						>
							<div className='mb-8'>
								<h2 className='text-foreground text-lg font-semibold tracking-tight'>Member Settings</h2>
								<p className='text-muted-foreground mt-1 text-sm'>
									Default settings for new members joining this organization
								</p>
							</div>

							{defaultsError && (
								<div className='bg-destructive/5 mb-8 rounded-lg p-4'>
									<div className='flex items-start gap-3'>
										<AlertCircle className='text-destructive mt-0.5 h-4 w-4 shrink-0' />
										<div>
											<p className='text-destructive text-sm font-medium'>Failed to load member settings</p>
											<p className='text-muted-foreground mt-1 text-xs'>{defaultsError.message}</p>
										</div>
									</div>
								</div>
							)}

							<div className='border-border/60 rounded-lg border'>
								{isDefaultsLoading
									? Array.from({ length: 2 }).map((_, index) => (
											<MemberSettingLoadingSkeleton key={index} index={index} />
										))
									: memberSettingsConfig.map((setting, index) => (
											<MemberSettingCard
												key={setting.id}
												{...setting}
												disabled={!canEdit || isSavingMemberDefaults}
												index={index}
											/>
										))}
							</div>

							<div className='mt-8 flex items-center justify-between'>
								<div className='flex items-center gap-2'>
									{hasMemberChanges && !isDefaultsLoading ? (
										<>
											<span className='relative flex h-2 w-2'>
												<span
													className='absolute inline-flex h-full w-full animate-ping rounded-full bg-amber-400
														opacity-75'
												/>
												<span className='relative inline-flex h-2 w-2 rounded-full bg-amber-500' />
											</span>
											<span className='text-foreground/70 text-xs font-medium'>Unsaved changes</span>
										</>
									) : (
										<>
											<Check className='text-success h-4 w-4' />
											<span className='text-muted-foreground text-xs'>All changes saved</span>
										</>
									)}
								</div>
								<Button
									onClick={saveMemberDefaults}
									disabled={!canEdit || isSavingMemberDefaults || isDefaultsLoading || !hasMemberChanges}
									size='sm'
									className='group gap-2'
								>
									{isSavingMemberDefaults ? (
										<>
											<Loader2Icon className='h-4 w-4 animate-spin' />
											Saving...
										</>
									) : (
										<>
											Save Changes
											<ArrowRight className='h-3.5 w-3.5 transition-transform group-hover:translate-x-0.5' />
										</>
									)}
								</Button>
							</div>
						</section>
					)}

					{/* Default Permissions Section */}
					{!isSelfOrg && (
						<section
							data-testid='org-settings-default-permissions'
							className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
							style={{ animationDelay: '150ms' }}
						>
							<div className='mb-8'>
								<h2 className='text-foreground text-lg font-semibold tracking-tight'>Default Permissions</h2>
								<p className='text-muted-foreground mt-1 text-sm'>
									Select which permissions new members should have by default
								</p>
							</div>

							{permissionDefaultError && (
								<div className='bg-destructive/5 mb-8 rounded-lg p-4'>
									<div className='flex items-start gap-3'>
										<AlertCircle className='text-destructive mt-0.5 h-4 w-4 shrink-0' />
										<div>
											<p className='text-destructive text-sm font-medium'>Failed to load permission defaults</p>
											<p className='text-muted-foreground mt-1 text-xs'>{permissionDefaultError.message}</p>
										</div>
									</div>
								</div>
							)}

							<div className='border-border/60 rounded-lg border'>
								{isLoadingPermissions || isLoadingPermissionDefault
									? Array.from({ length: 3 }).map((_, index) => <PermissionLoadingSkeleton key={index} index={index} />)
									: membershipPermissions.map((permission, index) => (
											<PermissionCheckboxCard
												key={permission.id}
												permission={permission}
												checked={selectedPermissions.has(permission.bitnum ?? 0)}
												onToggle={() => togglePermission(permission.bitnum ?? 0)}
												disabled={!canEdit || isSavingPermissionDefaults}
												index={index}
											/>
										))}
							</div>

							<div className='mt-8 flex items-center justify-between'>
								<div className='flex items-center gap-2'>
									{hasPermissionChangesComputed && !isLoadingPermissionDefault ? (
										<>
											<span className='relative flex h-2 w-2'>
												<span
													className='absolute inline-flex h-full w-full animate-ping rounded-full bg-amber-400
														opacity-75'
												/>
												<span className='relative inline-flex h-2 w-2 rounded-full bg-amber-500' />
											</span>
											<span className='text-foreground/70 text-xs font-medium'>Unsaved changes</span>
										</>
									) : (
										<>
											<Check className='text-success h-4 w-4' />
											<span className='text-muted-foreground text-xs'>All changes saved</span>
										</>
									)}
								</div>
								<Button
									onClick={savePermissionDefaults}
									disabled={
										!canEdit ||
										isSavingPermissionDefaults ||
										isLoadingPermissionDefault ||
										!hasPermissionChangesComputed
									}
									size='sm'
									className='group gap-2'
								>
									{isSavingPermissionDefaults ? (
										<>
											<Loader2Icon className='h-4 w-4 animate-spin' />
											Saving...
										</>
									) : (
										<>
											Save Changes
											<ArrowRight className='h-3.5 w-3.5 transition-transform group-hover:translate-x-0.5' />
										</>
									)}
								</Button>
							</div>
						</section>
					)}

					{/* Danger Zone Section */}
					{canDelete && (
						<section
							data-testid='org-settings-danger-zone'
							className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
							style={{ animationDelay: '150ms' }}
						>
							<div className='mb-8'>
								<h2 className='text-destructive text-lg font-semibold tracking-tight'>Danger Zone</h2>
								<p className='text-muted-foreground mt-1 text-sm'>Irreversible and destructive actions</p>
							</div>

							<div className='bg-destructive/5 rounded-xl p-6'>
								<div className='flex items-start justify-between gap-8'>
									<div>
										<p className='text-foreground font-medium'>Delete organization</p>
										<p className='text-muted-foreground mt-1 text-sm'>
											Permanently delete this organization and all associated data. This action cannot be undone.
										</p>
									</div>
									<Button variant='destructive' onClick={() => setDeleteDialogOpen(true)} className='shrink-0'>
										Delete
									</Button>
								</div>
							</div>
						</section>
					)}
				</div>

				<AlertDialog
					open={deleteDialogOpen}
					onOpenChange={(open) => {
						setDeleteDialogOpen(open);
						if (!open) setDeleteConfirmation('');
					}}
				>
					<AlertDialogContent>
						<AlertDialogHeader>
							<AlertDialogTitle>Delete organization</AlertDialogTitle>
							<AlertDialogDescription>
								This action cannot be undone. This will permanently delete the organization and all associated data.
							</AlertDialogDescription>
						</AlertDialogHeader>
						<div className='space-y-3 py-4'>
							<Label htmlFor='delete-confirmation' className='text-sm'>
								Type <span className='bg-muted rounded px-1.5 py-1 font-mono text-xs'>{orgName}</span> to confirm
							</Label>
							<Input
								id='delete-confirmation'
								className='mt-2'
								value={deleteConfirmation}
								onChange={(e) => setDeleteConfirmation(e.target.value)}
								placeholder={orgName}
								disabled={isDeleting}
							/>
						</div>
						<AlertDialogFooter>
							<AlertDialogCancel disabled={isDeleting}>Cancel</AlertDialogCancel>
							<Button
								variant='destructive'
								disabled={isDeleting || deleteConfirmation !== orgName}
								onClick={async () => {
									await deleteOrganization({ orgId });
								}}
							>
								{isDeleting && <Loader2Icon className='mr-2 h-4 w-4 animate-spin' />}
								{isDeleting ? 'Deleting...' : 'Delete'}
							</Button>
						</AlertDialogFooter>
					</AlertDialogContent>
				</AlertDialog>

				<div className='h-12' />
			</div>
		</div>
	);
}

interface MemberSettingCardProps {
	id: string;
	label: string;
	description: string;
	checked: boolean;
	onChange: (checked: boolean) => void;
	disabled?: boolean;
	index: number;
}

function MemberSettingCard({ id, label, description, checked, onChange, disabled, index }: MemberSettingCardProps) {
	return (
		<div
			style={{ animationDelay: `${index * 50}ms` }}
			className='animate-in fade-in-0 slide-in-from-bottom-2 fill-mode-backwards border-border/60 flex items-center
				justify-between border-b px-4 py-4 transition-colors duration-200 last:border-b-0'
		>
			<div className='flex-1'>
				<Label htmlFor={id} className='text-foreground cursor-pointer text-sm font-medium'>
					{label}
				</Label>
				<p className='text-muted-foreground mt-0.5 text-sm'>{description}</p>
			</div>
			<Switch id={id} checked={checked} onCheckedChange={onChange} disabled={disabled} />
		</div>
	);
}

function MemberSettingLoadingSkeleton({ index }: { index: number }) {
	return (
		<div
			style={{ animationDelay: `${index * 50}ms` }}
			className='animate-in fade-in-0 slide-in-from-bottom-2 fill-mode-backwards border-border flex items-center
				justify-between border-b px-4 py-4 last:border-b-0'
		>
			<div className='flex-1 space-y-2'>
				<Skeleton className='h-4 w-48' />
				<Skeleton className='h-4 w-64' />
			</div>
			<Skeleton className='h-5 w-9 rounded-full' />
		</div>
	);
}

interface PermissionCheckboxCardProps {
	permission: {
		id: string;
		name?: string | null | undefined;
		description?: string | null | undefined;
		bitnum?: number | null | undefined;
		bitstr?: string | null | undefined;
	};
	checked: boolean;
	onToggle: () => void;
	disabled?: boolean;
	index: number;
}

function PermissionCheckboxCard({ permission, checked, onToggle, disabled, index }: PermissionCheckboxCardProps) {
	return (
		<div
			style={{ animationDelay: `${index * 50}ms` }}
			className='animate-in fade-in-0 slide-in-from-bottom-2 fill-mode-backwards border-border/60 flex items-center
				justify-between border-b px-4 py-4 transition-colors duration-200 last:border-b-0'
		>
			<div className='flex-1'>
				<Label htmlFor={permission.id} className='text-foreground cursor-pointer text-sm font-medium'>
					{permission.name || 'Unknown Permission'}
				</Label>
				{permission.description && <p className='text-muted-foreground mt-0.5 text-sm'>{permission.description}</p>}
			</div>
			<Switch id={permission.id} checked={checked} onCheckedChange={onToggle} disabled={disabled} />
		</div>
	);
}

function PermissionLoadingSkeleton({ index }: { index: number }) {
	return (
		<div
			style={{ animationDelay: `${index * 50}ms` }}
			className='animate-in fade-in-0 slide-in-from-bottom-2 fill-mode-backwards border-border flex items-center
				justify-between border-b px-4 py-4 last:border-b-0'
		>
			<div className='flex-1 space-y-2'>
				<Skeleton className='h-4 w-48' />
				<Skeleton className='h-4 w-64' />
			</div>
			<Skeleton className='h-5 w-9 rounded-full' />
		</div>
	);
}
