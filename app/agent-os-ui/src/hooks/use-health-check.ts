'use client';

import { useQuery, type UseQueryResult } from '@tanstack/react-query';

const HEALTH_CHECK_BODY = JSON.stringify({ query: 'query HealthCheck { __typename }' });
const DEFAULT_STALE_TIME = 5 * 60 * 1000;

export interface UseHealthCheckOptions {
	endpoint: string | null | undefined;
	enabled?: boolean;
	staleTime?: number;
	requestInit?: RequestInit;
}

interface HealthCheckSuccess {
	lastCheckedAt: number;
}

export interface UseHealthCheckResult {
	isOnline: boolean;
	isOffline: boolean;
	isChecking: boolean;
	status: 'online' | 'offline' | 'checking' | 'idle';
	lastCheckedAt: number | null;
	error: Error | null;
	refetch: UseQueryResult<HealthCheckSuccess, Error>['refetch'];
}

export function useHealthCheck(options: UseHealthCheckOptions): UseHealthCheckResult {
	const { endpoint, enabled = true, staleTime = DEFAULT_STALE_TIME, requestInit } = options;

	const query = useQuery<HealthCheckSuccess, Error>({
		queryKey: ['health-check', { endpoint }],
		enabled: enabled && !!endpoint,
		retry: false,
		staleTime,
		gcTime: staleTime * 2,
		refetchOnWindowFocus: false,
		refetchOnReconnect: false,
		refetchOnMount: false,
		queryFn: async () => {
			if (!endpoint) {
				throw new Error('Health check endpoint is not defined');
			}

			const { headers, body, method, cache, ...rest } = requestInit ?? {};
			const verb = (method ?? 'POST').toUpperCase();
			const init: RequestInit = {
				method: verb,
				headers: new Headers(),
				cache: cache ?? 'no-store',
				...rest,
			};

			const defaults = new Headers();
			defaults.set('Accept', 'application/json');
			if (verb !== 'GET' && verb !== 'HEAD') {
				defaults.set('Content-Type', 'application/json');
			}
			defaults.forEach((value, key) => (init.headers as Headers).set(key, value));
			if (headers) {
				const provided = new Headers(headers as HeadersInit);
				provided.forEach((value, key) => (init.headers as Headers).set(key, value));
			}

			if (verb !== 'GET' && verb !== 'HEAD') {
				init.body = body ?? HEALTH_CHECK_BODY;
			}

			const response = await fetch(endpoint, init);

			if (!response.ok) {
				throw new Error(`Health check failed with status ${response.status}`);
			}

			const payload = await response.json();

			if (payload?.errors?.length) {
				throw new Error(payload.errors[0]?.message ?? 'Health check query returned errors');
			}

			return { lastCheckedAt: Date.now() } satisfies HealthCheckSuccess;
		},
	});

	const isOnline = query.status === 'success';
	const isChecking = query.isLoading || query.isFetching;
	const isOffline = !isOnline && !isChecking && !!endpoint;

	let status: UseHealthCheckResult['status'] = 'idle';
	if (isChecking) {
		status = 'checking';
	} else if (isOnline) {
		status = 'online';
	} else if (isOffline) {
		status = 'offline';
	}

	return {
		isOnline,
		isOffline,
		isChecking,
		status,
		lastCheckedAt: query.data?.lastCheckedAt ?? null,
		error: query.error ?? null,
		refetch: query.refetch,
	};
}
