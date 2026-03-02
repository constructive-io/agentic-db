import type { GraphQLSDKConfigTarget } from '@constructive-io/graphql-codegen';

/**
 * Single-endpoint codegen config for the schema-builder SDK.
 *
 * All schema-builder operations (databases, tables, fields, schemas, APIs, sites,
 * domains, modules, auth, memberships, permissions, invites, orgs) are served
 * from a single `api` endpoint.
 *
 * Auth: JWT obtained via signIn works across all operations.
 */

const config: Record<string, GraphQLSDKConfigTarget> = {
	api: {
		reactQuery: true,
		endpoint: process.env.CODEGEN_API_ENDPOINT ?? 'http://api.localhost:3000/graphql',
		output: './src/graphql/schema-builder-sdk/api',
	},
};

export default config;
