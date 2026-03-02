'use client';

import { useEntityParams } from '@/lib/navigation';
import { MembersRoute } from '@/components/members/members-route';

export default function OrgMembersPage() {
	const { orgId, organization } = useEntityParams();

	if (!orgId || !organization?._raw) {
		return null;
	}

	return <MembersRoute orgId={orgId} orgName={organization.name} organization={organization._raw} />;
}
