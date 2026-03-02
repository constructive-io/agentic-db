/**
 * GraphQL exports for the application.
 *
 * Schema-builder operations use the SDK directly from @sdk/api.
 */
import { TypedDocumentString } from './typed-document';

// Core execution functions with proper type inference
export { execute, executeSb, executeInContext, getAuthHeaders } from './execute';

// Context utilities
export { getSchemaContext, type SchemaContext } from '@/app-config';

/**
 * Creates a TypedDocumentString from a GraphQL query/mutation string.
 *
 * @example
 * const doc = graphql(`query GetUsers { users { id name } }`);
 * const result = await execute(doc);
 */
export function graphql<TResult = unknown, TVariables = Record<string, unknown>>(
	source: string,
): TypedDocumentString<TResult, TVariables> {
	return new TypedDocumentString<TResult, TVariables>(source, {
		operationName: source.match(/(?:mutation|query)\s+(\w+)/)?.[1] ?? 'Unknown',
	});
}

export default graphql;
