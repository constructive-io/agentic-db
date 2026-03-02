'use client';

import React, { useEffect, useMemo } from 'react';
import type { Route } from 'next';
import { usePathname, useRouter, useSearchParams } from 'next/navigation';
import { Loader2 } from 'lucide-react';

import { useCurrentUserAppMembership } from '@/lib/gql/hooks/schema-builder/app';
import { AccessDenied } from '@/components/access-denied/access-denied';
import { getHomePath } from '@/app-config';
import {
	getRouteAccessType,
	getRouteContext,
	getRouteRedirectTarget,
	getRouteRequiredPermission,
	ROUTE_PATHS,
} from '@/app-routes';
import { buildQueryString, INVITE_QUERY_PARAMS } from '@/app/invite/page';

import { useAuthContext } from './auth-context';
import { TokenManager } from './token-manager';

/**
 * Default loading fallback component
 */
function AuthLoadingFallback() {
	return (
		<div
			data-part-id='auth-loading-fallback'
			className='bg-background flex min-h-screen w-dvw items-center justify-center'
		>
			<div className='flex flex-col items-center space-y-4'>
				<Loader2 className='text-primary h-8 w-8 animate-spin' />
				<p className='text-muted-foreground text-sm'>Loading...</p>
			</div>
		</div>
	);
}

/**
 * Route guard component that handles authentication routing.
 *
 * Route access types are defined centrally in app-routes.ts:
 * - 'public': Renders immediately (auth may be handled by embedded AuthGate)
 * - 'protected': Requires authentication - redirects to root (/) if not authenticated
 * - 'guest-only': Only accessible when NOT authenticated
 * - 'redirect': Immediately redirects to configured target
 *
 * Permission types:
 * - 'app-admin': Requires app_memberships.is_admin = true
 *
 */
export function RouteGuard({ children }: { children: React.ReactNode }) {
	const { isAuthenticated, isLoading } = useAuthContext();
	const pathname = usePathname();
	const searchParams = useSearchParams();
	const router = useRouter();

	// Get route configuration from centralized config
	const accessType = getRouteAccessType(pathname);
	const ctx = getRouteContext(pathname);
	const redirectTarget = getRouteRedirectTarget(pathname);
	const requiredPermission = getRouteRequiredPermission(pathname);

	const redirectParam = useMemo(() => {
		const raw = searchParams?.get('redirect');
		if (!raw) return null;
		if (!raw.startsWith('/')) return null;
		if (raw.startsWith('//')) return null;
		return raw;
	}, [searchParams]);

	// Get app membership for permission checks (only when authenticated and permission required)
	const { isAppAdmin, isLoading: isAppMembershipLoading } = useCurrentUserAppMembership({
		enabled: isAuthenticated && requiredPermission === 'app-admin',
	});

	useEffect(() => {
		// Handle redirect routes immediately
		if (accessType === 'redirect' && redirectTarget) {
			router.replace(redirectTarget);
			return;
		}

		// Skip redirects during loading - this prevents premature redirects
		if (isLoading) {
			return;
		}

		// Handle protected routes - redirect to root if not authenticated
		if (accessType === 'protected' && !isAuthenticated) {
			router.replace(ROUTE_PATHS.ROOT);
			return;
		}

		// Handle guest-only routes - only redirect if definitely authenticated
		if (accessType === 'guest-only' && isAuthenticated) {
			// Check for invite_token in query params - prioritize invite flow
			const inviteToken = searchParams?.get(INVITE_QUERY_PARAMS.INVITE_TOKEN);
			if (inviteToken) {
				// Preserve all query params when redirecting to invite page
				router.replace(`/invite${buildQueryString(searchParams)}` as Route);
				return;
			}
			const target = redirectParam || getHomePath(ctx);
			router.replace(target as Route);
			return;
		}
		// eslint-disable-next-line react-hooks/exhaustive-deps
	}, [isAuthenticated, isLoading, accessType, pathname, redirectTarget, redirectParam]);

	// Handle redirect routes - show loading while redirecting
	if (accessType === 'redirect') {
		return <AuthLoadingFallback />;
	}

	// For protected routes, defer loading UI to the shell
	if (accessType === 'protected') {
		if (isLoading) {
			return <>{children}</>;
		}
		// If not authenticated, show loading while redirect happens (via useEffect)
		if (!isAuthenticated) {
			return <AuthLoadingFallback />;
		}

		// Check for permission-restricted routes (e.g., app-admin)
		if (requiredPermission === 'app-admin') {
			// Wait for app membership to load
			if (isAppMembershipLoading) {
				return <AuthLoadingFallback />;
			}
			// If not an app admin, show access denied (renders within shell)
			if (!isAppAdmin) {
				return <AccessDenied />;
			}
		}

		// Authenticated and has permission - render children
		return <>{children}</>;
	}

	// For public routes, render immediately regardless of auth state
	if (accessType === 'public') {
		return <>{children}</>;
	}

	// For guest-only routes, optimize loading state
	if (accessType === 'guest-only') {
		// Check for invite token - if present, show loading while checking auth or if authenticated
		const inviteToken = searchParams?.get(INVITE_QUERY_PARAMS.INVITE_TOKEN);
		if (inviteToken) {
			// If still loading auth state, show loading to prevent flash
			if (isLoading) {
				return <AuthLoadingFallback />;
			}
			// If authenticated, show loading while redirecting
			if (isAuthenticated) {
				return <AuthLoadingFallback />;
			}
			// If not authenticated and not loading, allow register page to show
		}

		// If there's no token at all, render immediately without waiting for auth loading
		if (isLoading && !TokenManager.hasToken(ctx)) {
			return <>{children}</>;
		}
		// If there might be a token, wait for auth state to be determined
		if (isLoading) {
			return <AuthLoadingFallback />;
		}
		// Prevent flash of guest content when authenticated
		if (isAuthenticated) {
			return <AuthLoadingFallback />;
		}
	}

	return <>{children}</>;
}

// Legacy exports for backward compatibility (deprecated)
export const ProtectedRoute = RouteGuard;
export const GuestRoute = RouteGuard;
export const RouteProtectionWrapper = RouteGuard;
export const AuthenticationWrapper = RouteGuard;

// Legacy utility functions for backward compatibility
export const shouldProtectRoute = (pathname: string): boolean => getRouteAccessType(pathname) === 'protected';
export const shouldBeGuestOnly = (pathname: string): boolean => getRouteAccessType(pathname) === 'guest-only';
