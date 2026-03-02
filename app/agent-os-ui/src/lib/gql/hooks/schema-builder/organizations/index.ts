/**
 * Organizations Hooks
 *
 * GraphQL hooks for organization CRUD operations.
 * Organizations are implemented as Users with type=1 (Organization role type).
 */

// Types
export {
	type Organization,
	type OrganizationWithRole,
	type OrganizationSettings,
	type OrgRole,
	ROLE_TYPE,
	ORG_ROLE_CONFIG,
	deriveOrgRole,
} from './organization.types';

// List organizations (with current user's role)
export {
	useOrganizations,
	organizationsQueryKeys,
	type UseOrganizationsOptions,
	type UseOrganizationsResult,
} from './use-organizations';

// Get single organization
export {
	useOrganization,
	type OrganizationDetail,
	type OrganizationMember,
	type UseOrganizationOptions,
	type UseOrganizationResult,
} from './use-organization';

// Create organization
export {
	useCreateOrganization,
	type CreateOrganizationInput,
	type CreateOrganizationResult,
	type UseCreateOrganizationOptions,
	type UseCreateOrganizationResult,
} from './use-create-organization';

// Update organization
export {
	useUpdateOrganization,
	type UpdateOrganizationInput,
	type UpdateOrganizationResult,
	type UseUpdateOrganizationOptions,
	type UseUpdateOrganizationResult,
} from './use-update-organization';

// Delete organization
export {
	useDeleteOrganization,
	type DeleteOrganizationInput,
	type DeleteOrganizationResult,
	type UseDeleteOrganizationOptions,
	type UseDeleteOrganizationResult,
} from './use-delete-organization';

// Organization members
export {
	useOrgMembers,
	type OrgMember,
	type OrgMemberStatus,
	type UseOrgMembersOptions,
	type UseOrgMembersResult,
} from './use-org-members';

// Organization invites
export {
	useOrgInvites,
	useOrgClaimedInvites,
	orgInvitesQueryKeys,
	type OrgInvite,
	type OrgInviteRole,
	type OrgInviteStatus,
	type OrgClaimedInvite,
	type UseOrgInvitesOptions,
} from './use-org-invites';

export {
	useSendOrgInvite,
	useCancelOrgInvite,
	useExtendOrgInvite,
	type SendOrgInviteInput,
	type CancelOrgInviteInput,
	type ExtendOrgInviteInput,
} from './use-org-invite-mutations';

// Organization membership defaults (join/approval workflow)
export {
	useOrgMembershipDefault,
	useUpdateOrgMembershipDefault,
	useCreateOrgMembershipDefault,
	orgMembershipDefaultQueryKeys,
	type OrgMembershipDefault,
	type UseOrgMembershipDefaultOptions,
	type UpdateOrgMembershipDefaultInput,
	type CreateOrgMembershipDefaultInput,
} from './use-org-membership-default';

// Organization membership permission defaults
export {
	useMembershipPermissionDefault,
	useCreateMembershipPermissionDefault,
	useUpdateMembershipPermissionDefault,
	membershipPermissionDefaultQueryKeys,
	type MembershipPermissionDefault,
	type UseMembershipPermissionDefaultOptions,
	type CreateMembershipPermissionDefaultInput,
	type UpdateMembershipPermissionDefaultInput,
} from './use-membership-permission-default';
