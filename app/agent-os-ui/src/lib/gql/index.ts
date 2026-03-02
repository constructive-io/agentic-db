/**
 * Data layer exports
 * Main entry point for GraphQL hooks and error handling
 */

// Auth and schema-builder hooks
export * from './hooks';

// Error handling
export {
	DataError,
	DataErrorType,
	createError,
	parseError,
	getHumanReadableError,
	getConstraintMessage,
	CONSTRAINT_MESSAGES,
	parseError as parseGraphQLError,
} from './error-handler';

// GraphQL execute
export { execute } from '@/graphql/execute';
