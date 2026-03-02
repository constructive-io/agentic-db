'use client';

import { ReactNode, useEffect } from 'react';
import { useRouter } from 'next/navigation';

import { useEntityParams } from '@/lib/navigation';

interface OrgLayoutProps {
	children: ReactNode;
}

/**
 * Organization layout - validates org from URL and renders children.
 *
 * URL is the source of truth for entity selection.
 * This layout validates that the org exists and redirects if not found.
 *
 * Loading Strategy:
 * - Always render children during loading - page components handle their own skeletons
 * - Redirect on validation failure without showing intermediate messages
 * - This eliminates flash of "Redirecting..." text
 *
 * Entity hierarchy: App (root) → Org → Database
 */
export default function OrgLayout({ children }: OrgLayoutProps) {
	const router = useRouter();
	const { orgId, organization, isLoading } = useEntityParams();

	// Handle redirect in useEffect to avoid React render-during-render issues
	// and to prevent flash of redirect message
	useEffect(() => {
		if (isLoading) return;

		// Org not found after loading - redirect to home
		if (orgId && !organization) {
			router.replace('/');
		}
	}, [isLoading, orgId, organization, router]);

	// Always render children - they handle their own loading states
	// Redirect happens in useEffect without blocking render
	return <>{children}</>;
}
