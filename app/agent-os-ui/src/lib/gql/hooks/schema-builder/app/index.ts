/**
 * App-level hooks for platform administration
 * These hooks handle app-level context that exists above organizations
 */

export {
	useCurrentUserAppMembership,
	appMembershipQueryKeys,
	type AppMembership,
	type UseCurrentUserAppMembershipOptions,
	type UseCurrentUserAppMembershipResult,
} from './use-current-user-app-membership';

export {
	useCurrentUser,
	currentUserQueryKeys,
	type CurrentUser,
	type UseCurrentUserOptions,
	type UseCurrentUserResult,
} from './use-current-user';

export {
	useAppUsers,
	useUpdateAppUser,
	appUsersQueryKeys,
	type AppUser,
	type UseAppUsersOptions,
	type UseAppUsersResult,
	type UpdateAppUserData,
} from './use-app-users';

export {
	useAppSettings,
	useUpdateAppSettings,
	appSettingsQueryKeys,
	type AppMembershipDefaultSettings,
	type UseAppSettingsOptions,
	type UseAppSettingsResult,
	type UpdateAppSettingsData,
	type UseUpdateAppSettingsResult,
} from './use-app-settings';

export {
	useAppInvites,
	useAppClaimedInvites,
	useSendAppInvite,
	useCancelAppInvite,
	useExtendAppInvite,
	appInvitesQueryKeys,
	type AppInvite,
	type AppInviteRole,
	type AppInviteStatus,
	type AppClaimedInvite,
	type UseAppInvitesOptions,
	type SendAppInviteInput,
	type CancelAppInviteInput,
	type ExtendAppInviteInput,
} from './use-app-invites';
