/**
 * NodeHttpAdapter
 * ================
 * Custom GraphQL adapter that uses Node's built-in `http` module instead of
 * the browser Fetch API.
 *
 * WHY THIS EXISTS:
 * Node.js undici (built-in fetch) has two problems for local development:
 *   1. It treats `Host` as a "forbidden header" (per Fetch spec) — so you can't
 *      override the Host header to route virtual-hosted services.
 *   2. It doesn't resolve `*.localhost` subdomains — these are resolved by macOS's
 *      mDNSResponder (which curl uses), but Node.js's libuv DNS doesn't pick them up.
 *
 * Solution: Use `http.request` directly, which:
 *   - Allows setting any header (including Host)
 *   - Allows connecting to an explicit IP/hostname while sending a different Host header
 *
 * Usage:
 *   const adapter = new NodeHttpAdapter('http://[::1]:3000/graphql', {
 *     Host: 'api.localhost',
 *     Authorization: 'Bearer <token>',
 *   });
 *   const db = createPlatformClient({ adapter });
 */

import * as http from 'http';
import type { GraphQLAdapter, GraphQLError, QueryResult } from '@constructive-io/graphql-types';

export class NodeHttpAdapter implements GraphQLAdapter {
	private parsedUrl: URL;
	private headers: Record<string, string>;

	constructor(endpoint: string, headers: Record<string, string> = {}) {
		this.parsedUrl = new URL(endpoint);
		this.headers = headers;
	}

	async execute<T>(document: string, variables?: Record<string, unknown>): Promise<QueryResult<T>> {
		const body = JSON.stringify({ query: document, variables: variables ?? {} });

		return new Promise((resolve) => {
			const req = http.request(
				{
					hostname: this.parsedUrl.hostname.replace(/^\[|\]$/g, ''), // strip brackets from IPv6
					port: parseInt(this.parsedUrl.port || '80', 10),
					path: this.parsedUrl.pathname,
					method: 'POST',
					headers: {
						'Content-Type': 'application/json',
						Accept: 'application/json',
						'Content-Length': Buffer.byteLength(body),
						...this.headers,
					},
				},
				(res) => {
					let data = '';
					res.on('data', (chunk) => (data += chunk));
					res.on('end', () => {
						if (res.statusCode && res.statusCode >= 400) {
							resolve({
								ok: false,
								data: null,
								errors: [{ message: `HTTP ${res.statusCode}: ${res.statusMessage}` }],
							});
							return;
						}
						try {
							const json = JSON.parse(data) as {
								data?: T;
								errors?: GraphQLError[];
							};
							if (json.errors && json.errors.length > 0) {
								resolve({ ok: false, data: null, errors: json.errors });
							} else {
								resolve({ ok: true, data: json.data as T, errors: undefined });
							}
						} catch (e) {
							resolve({
								ok: false,
								data: null,
								errors: [{ message: `Failed to parse response: ${String(e)}` }],
							});
						}
					});
				}
			);

			req.on('error', (err) => {
				resolve({
					ok: false,
					data: null,
					errors: [{ message: `Network error: ${err.message}` }],
				});
			});

			req.write(body);
			req.end();
		});
	}

	setHeaders(headers: Record<string, string>): void {
		this.headers = { ...this.headers, ...headers };
	}

	getEndpoint(): string {
		return this.parsedUrl.toString();
	}
}
