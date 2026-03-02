/**
 * Schema Builder hooks
 * Centralized exports for all schema-builder related hooks
 */

// App-level hooks (platform administration)
export {
	useCurrentUserAppMembership,
	useAppUsers,
	useUpdateAppUser,
	useAppInvites,
	useAppClaimedInvites,
	useSendAppInvite,
	useCancelAppInvite,
	useExtendAppInvite,
	appMembershipQueryKeys,
	appUsersQueryKeys,
	appInvitesQueryKeys,
	type AppMembership,
	type AppUser,
	type AppInvite,
	type AppInviteRole,
	type AppInviteStatus,
	type AppClaimedInvite,
	type UseCurrentUserAppMembershipOptions,
	type UseCurrentUserAppMembershipResult,
	type UseAppUsersOptions,
	type UseAppUsersResult,
	type UpdateAppUserData,
	type UseAppInvitesOptions,
	type SendAppInviteInput,
	type CancelAppInviteInput,
	type ExtendAppInviteInput,
} from './app';

// Organization hooks
export {
	// Types
	type Organization,
	type OrganizationWithRole,
	type OrganizationSettings,
	type OrganizationDetail,
	type OrganizationMember,
	type OrgRole,
	ROLE_TYPE,
	ORG_ROLE_CONFIG,
	deriveOrgRole,
	// Hooks
	useOrganizations,
	useOrganization,
	useCreateOrganization,
	useUpdateOrganization,
	useDeleteOrganization,
	useOrgMembers,
	useOrgInvites,
	useOrgClaimedInvites,
	useSendOrgInvite,
	useCancelOrgInvite,
	useExtendOrgInvite,
	useOrgMembershipDefault,
	useUpdateOrgMembershipDefault,
	useCreateOrgMembershipDefault,
	useMembershipPermissionDefault,
	useCreateMembershipPermissionDefault,
	useUpdateMembershipPermissionDefault,
	// Query keys
	organizationsQueryKeys,
	orgInvitesQueryKeys,
	orgMembershipDefaultQueryKeys,
	membershipPermissionDefaultQueryKeys,
	// Hook types
	type UseOrganizationsOptions,
	type UseOrganizationsResult,
	type UseOrganizationOptions,
	type UseOrganizationResult,
	type CreateOrganizationInput,
	type CreateOrganizationResult,
	type UseCreateOrganizationOptions,
	type UseCreateOrganizationResult,
	type UpdateOrganizationInput,
	type UpdateOrganizationResult,
	type UseUpdateOrganizationOptions,
	type UseUpdateOrganizationResult,
	type DeleteOrganizationInput,
	type DeleteOrganizationResult,
	type OrgMember,
	type OrgMemberStatus,
	type UseOrgMembersOptions,
	type UseOrgMembersResult,
	type OrgInvite,
	type OrgInviteRole,
	type OrgInviteStatus,
	type OrgClaimedInvite,
	type UseOrgInvitesOptions,
	type SendOrgInviteInput,
	type CancelOrgInviteInput,
	type ExtendOrgInviteInput,
	type OrgMembershipDefault,
	type UseOrgMembershipDefaultOptions,
	type UpdateOrgMembershipDefaultInput,
	type CreateOrgMembershipDefaultInput,
	type MembershipPermissionDefault,
	type UseMembershipPermissionDefaultOptions,
	type CreateMembershipPermissionDefaultInput,
	type UpdateMembershipPermissionDefaultInput,
	type UseDeleteOrganizationOptions,
	type UseDeleteOrganizationResult,
} from './organizations';

// Account hooks
export * from './account';

// Shared invite utilities
export * from './invites-shared-utils';
