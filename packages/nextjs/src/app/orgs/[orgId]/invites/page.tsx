'use client';

import { useEntityParams } from '@/lib/navigation';
import { InvitesRoute } from '@/components/invites/invites-route';

export default function OrgInvitesPage() {
	const { orgId, organization } = useEntityParams();

	if (!orgId || !organization?._raw) {
		return null;
	}

	return <InvitesRoute orgId={orgId} orgName={organization.name} organization={organization._raw} />;
}
