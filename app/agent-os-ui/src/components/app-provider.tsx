'use client';

import { QueryClientProvider } from '@tanstack/react-query';
import { NuqsAdapter } from 'nuqs/adapters/next/app';

import { getEndpoint } from '@/app-config';
import { getAuthHeaders } from '@/graphql/execute';
import { configure, type QueryResult } from '@sdk/api';
import { AuthProvider } from '@/lib/auth/auth-context';
import { queryClient } from '@/lib/query-client';

// Initialize the SDK client at module load time (before any queries can fire).
// Endpoint uses a getter so changes to Direct Connect / UI overrides are picked up
// on every request without needing to re-call configure().
configure({
	adapter: {
		async execute<T>(document: string, variables?: Record<string, unknown>): Promise<QueryResult<T>> {
			const endpoint = getEndpoint('schema-builder')!;
			const headers = getAuthHeaders('schema-builder');
			const res = await fetch(endpoint, {
				method: 'POST',
				headers: { 'Content-Type': 'application/json', Accept: 'application/json', ...headers },
				body: JSON.stringify({ query: document, variables: variables ?? {} }),
			});
			const json = await res.json();
			if (json.errors?.length) {
				return { ok: false as const, data: null, errors: json.errors };
			}
			return { ok: true as const, data: json.data as T, errors: undefined };
		},
	},
});

export function AppProvider({ children }: { children: React.ReactNode }) {
	return (
		<QueryClientProvider client={queryClient}>
			<AuthProvider>
				<NuqsAdapter>{children}</NuqsAdapter>
			</AuthProvider>
		</QueryClientProvider>
	);
}
