'use client';

import { useEntityParams } from '@/lib/navigation';
import { OrgSettingsRoute } from '@/components/settings/org-settings-route';

export default function OrgSettingsPage() {
	const { orgId, organization } = useEntityParams();

	if (!orgId || !organization?._raw) {
		return null;
	}

	return <OrgSettingsRoute orgId={orgId} orgName={organization.name} organization={organization._raw} />;
}
