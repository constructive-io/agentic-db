/**
 * Centralized error handling for the data layer
 * Provides consistent error types, messages, and handling patterns
 */

// ============================================================================
// Error Types (const map instead of enum per codebase conventions)
// ============================================================================

export const DataErrorType = {
	// Network/Connection errors
	NETWORK_ERROR: 'NETWORK_ERROR',
	TIMEOUT_ERROR: 'TIMEOUT_ERROR',

	// Validation errors
	VALIDATION_FAILED: 'VALIDATION_FAILED',
	REQUIRED_FIELD_MISSING: 'REQUIRED_FIELD_MISSING',
	INVALID_MUTATION_DATA: 'INVALID_MUTATION_DATA',

	// Query errors
	QUERY_GENERATION_FAILED: 'QUERY_GENERATION_FAILED',
	QUERY_EXECUTION_FAILED: 'QUERY_EXECUTION_FAILED',

	// Permission errors
	UNAUTHORIZED: 'UNAUTHORIZED',
	FORBIDDEN: 'FORBIDDEN',

	// Schema errors
	TABLE_NOT_FOUND: 'TABLE_NOT_FOUND',

	// Request errors
	BAD_REQUEST: 'BAD_REQUEST',
	NOT_FOUND: 'NOT_FOUND',

	// GraphQL-specific errors
	GRAPHQL_ERROR: 'GRAPHQL_ERROR',

	// PostgreSQL constraint errors (surfaced via PostGraphile)
	UNIQUE_VIOLATION: 'UNIQUE_VIOLATION',
	FOREIGN_KEY_VIOLATION: 'FOREIGN_KEY_VIOLATION',
	NOT_NULL_VIOLATION: 'NOT_NULL_VIOLATION',
	CHECK_VIOLATION: 'CHECK_VIOLATION',
	EXCLUSION_VIOLATION: 'EXCLUSION_VIOLATION',

	// Generic errors
	UNKNOWN_ERROR: 'UNKNOWN_ERROR',
} as const;

export type DataErrorType = (typeof DataErrorType)[keyof typeof DataErrorType];

// ============================================================================
// DataError Class
// ============================================================================

export interface DataErrorOptions {
	/** Optional table name for data-layer operations */
	tableName?: string;
	/** Optional field name for data-layer operations */
	fieldName?: string;
	/** Optional constraint name for PostgreSQL constraint violations */
	constraint?: string;
	originalError?: Error;
	code?: string;
	context?: Record<string, unknown>;
}

/**
 * Standard data layer error class
 */
export class DataError extends Error {
	public readonly type: DataErrorType;
	public readonly code?: string;
	public readonly originalError?: Error;
	public readonly context?: Record<string, unknown>;
	public readonly tableName?: string;
	public readonly fieldName?: string;
	public readonly constraint?: string;

	constructor(type: DataErrorType, message: string, options: DataErrorOptions = {}) {
		super(message);
		this.name = 'DataError';
		this.type = type;
		this.code = options.code;
		this.originalError = options.originalError;
		this.context = options.context;
		this.tableName = options.tableName;
		this.fieldName = options.fieldName;
		this.constraint = options.constraint;

		if (Error.captureStackTrace) {
			Error.captureStackTrace(this, DataError);
		}
	}

	/**
	 * Get a user-friendly error message.
	 * Checks constraint-specific messages first, then falls back to generic messages.
	 */
	getUserMessage(): string {
		// Check constraint-specific message first (for constraint violations)
		if (this.constraint) {
			const constraintMsg = getConstraintMessage(this.constraint);
			if (constraintMsg) return constraintMsg;
		}

		// Fall back to generic messages by error type
		switch (this.type) {
			case DataErrorType.NETWORK_ERROR:
				return 'Network error. Please check your connection and try again.';
			case DataErrorType.TIMEOUT_ERROR:
				return 'Request timed out. Please try again.';
			case DataErrorType.UNAUTHORIZED:
				return 'You are not authorized. Please log in and try again.';
			case DataErrorType.FORBIDDEN:
				return 'You do not have permission to access this resource.';
			case DataErrorType.VALIDATION_FAILED:
				return 'Validation failed. Please check your input and try again.';
			case DataErrorType.REQUIRED_FIELD_MISSING:
				return this.fieldName
					? `The field "${this.fieldName}" is required.`
					: 'A required field is missing. Please check your input.';
			case DataErrorType.INVALID_MUTATION_DATA:
				return 'Invalid input. Please check your data and try again.';
			case DataErrorType.QUERY_GENERATION_FAILED:
				return 'Query validation failed. Please check your request.';
			case DataErrorType.QUERY_EXECUTION_FAILED:
				return 'Query execution failed. Please try again.';
			case DataErrorType.TABLE_NOT_FOUND:
				return 'The requested table was not found.';
			case DataErrorType.BAD_REQUEST:
				return this.message || 'Invalid request.';
			case DataErrorType.NOT_FOUND:
				return 'The requested resource was not found.';
			case DataErrorType.UNIQUE_VIOLATION:
				return this.fieldName
					? `A record with this ${this.fieldName} already exists.`
					: 'A record with this value already exists.';
			case DataErrorType.FOREIGN_KEY_VIOLATION:
				return 'This record cannot be saved because it references a record that does not exist.';
			case DataErrorType.NOT_NULL_VIOLATION:
				return this.fieldName
					? `The field "${this.fieldName}" cannot be empty.`
					: 'A required field cannot be empty.';
			case DataErrorType.CHECK_VIOLATION:
				return this.fieldName
					? `The value for "${this.fieldName}" is not valid.`
					: 'The value does not meet the required constraints.';
			case DataErrorType.EXCLUSION_VIOLATION:
				return 'This record conflicts with an existing record.';
			default:
				return this.message || 'An unexpected error occurred.';
		}
	}

	/**
	 * Check if this error is retryable
	 */
	isRetryable(): boolean {
		return this.type === DataErrorType.NETWORK_ERROR || this.type === DataErrorType.TIMEOUT_ERROR;
	}

	/**
	 * Get error details for logging
	 */
	getLogDetails(): Record<string, unknown> {
		return {
			type: this.type,
			message: this.message,
			code: this.code,
			tableName: this.tableName,
			fieldName: this.fieldName,
			context: this.context,
			stack: this.stack,
			originalError: this.originalError
				? {
						name: this.originalError.name,
						message: this.originalError.message,
					}
				: undefined,
		};
	}
}

// ============================================================================
// GraphQL Types
// ============================================================================

export interface GraphQLErrorLocation {
	line: number;
	column: number;
}

export type GraphQLErrorPath = Array<string | number>;

export interface GraphQLError {
	message: string;
	extensions?: { code?: string } & Record<string, unknown>;
	locations?: GraphQLErrorLocation[];
	path?: GraphQLErrorPath;
}

// ============================================================================
// Error Factory
// ============================================================================

export const createDataError = {
	networkError: (originalError?: Error, tableName?: string) =>
		new DataError(DataErrorType.NETWORK_ERROR, 'Network error occurred', { originalError, tableName }),

	timeoutError: (originalError?: Error, tableName?: string) =>
		new DataError(DataErrorType.TIMEOUT_ERROR, 'Request timed out', { originalError, tableName }),

	validationFailed: (tableName: string | undefined, validationErrors: string[]) =>
		new DataError(
			DataErrorType.VALIDATION_FAILED,
			`Validation failed: ${validationErrors.join(', ')}`,
			{ tableName, context: { validationErrors } },
		),

	requiredFieldMissing: (fieldName: string, tableName?: string) =>
		new DataError(DataErrorType.REQUIRED_FIELD_MISSING, `Required field ${fieldName} is missing`, {
			tableName,
			fieldName,
		}),

	unauthorized: (message = 'Authentication required', tableName?: string) =>
		new DataError(DataErrorType.UNAUTHORIZED, message, { tableName }),

	forbidden: (tableName?: string) =>
		new DataError(DataErrorType.FORBIDDEN, 'Access forbidden', { tableName }),

	queryGenerationFailed: (message: string, tableName?: string, code?: string) =>
		new DataError(DataErrorType.QUERY_GENERATION_FAILED, message, { tableName, code }),

	queryExecutionFailed: (message: string, tableName?: string, code?: string) =>
		new DataError(DataErrorType.QUERY_EXECUTION_FAILED, message, { tableName, code }),

	tableNotFound: (message = 'Table not found', tableName?: string, code?: string) =>
		new DataError(DataErrorType.TABLE_NOT_FOUND, message, { tableName, code }),

	invalidMutationData: (message: string, tableName?: string, code?: string, context?: Record<string, unknown>) =>
		new DataError(DataErrorType.INVALID_MUTATION_DATA, message, { tableName, code, context }),

	// PostgreSQL constraint violations
	uniqueViolation: (message: string, tableName?: string, fieldName?: string, constraint?: string) =>
		new DataError(DataErrorType.UNIQUE_VIOLATION, message, { tableName, fieldName, constraint, code: '23505' }),

	foreignKeyViolation: (message: string, tableName?: string, fieldName?: string, constraint?: string) =>
		new DataError(DataErrorType.FOREIGN_KEY_VIOLATION, message, { tableName, fieldName, constraint, code: '23503' }),

	notNullViolation: (message: string, tableName?: string, fieldName?: string, constraint?: string) =>
		new DataError(DataErrorType.NOT_NULL_VIOLATION, message, { tableName, fieldName, constraint, code: '23502' }),

	checkViolation: (message: string, tableName?: string, fieldName?: string, constraint?: string) =>
		new DataError(DataErrorType.CHECK_VIOLATION, message, { tableName, fieldName, constraint, code: '23514' }),

	exclusionViolation: (message: string, tableName?: string, constraint?: string) =>
		new DataError(DataErrorType.EXCLUSION_VIOLATION, message, { tableName, constraint, code: '23P01' }),

	unknown: (originalError: Error, tableName?: string) =>
		new DataError(DataErrorType.UNKNOWN_ERROR, originalError.message, { originalError, tableName }),
};

// Backwards-compatible factory used across the app
export const createError = {
	network: (originalError?: Error) => createDataError.networkError(originalError),

	timeout: (originalError?: Error) => createDataError.timeoutError(originalError),

	unauthorized: (message = 'Authentication required') => createDataError.unauthorized(message),

	forbidden: (message = 'Access forbidden') => new DataError(DataErrorType.FORBIDDEN, message),

	badRequest: (message: string, code?: string) => new DataError(DataErrorType.BAD_REQUEST, message, { code }),

	notFound: (message = 'Resource not found') => new DataError(DataErrorType.NOT_FOUND, message),

	graphql: (message: string, code?: string) => new DataError(DataErrorType.GRAPHQL_ERROR, message, { code }),

	unknown: (originalError: Error) => createDataError.unknown(originalError),
};

// ============================================================================
// Error Parsing
// ============================================================================

/**
 * PostgreSQL SQLSTATE error codes
 * https://www.postgresql.org/docs/current/errcodes-appendix.html
 */
export const PG_ERROR_CODES = {
	// Class 23 - Integrity Constraint Violation
	UNIQUE_VIOLATION: '23505',
	FOREIGN_KEY_VIOLATION: '23503',
	NOT_NULL_VIOLATION: '23502',
	CHECK_VIOLATION: '23514',
	EXCLUSION_VIOLATION: '23P01',

	// Class 22 - Data Exception
	NUMERIC_VALUE_OUT_OF_RANGE: '22003',
	STRING_DATA_RIGHT_TRUNCATION: '22001',
	INVALID_TEXT_REPRESENTATION: '22P02',
	DATETIME_FIELD_OVERFLOW: '22008',

	// Class 42 - Syntax Error or Access Rule Violation
	UNDEFINED_TABLE: '42P01',
	UNDEFINED_COLUMN: '42703',
	INSUFFICIENT_PRIVILEGE: '42501',

	// Class 53 - Insufficient Resources
	DISK_FULL: '53100',
	OUT_OF_MEMORY: '53200',
	TOO_MANY_CONNECTIONS: '53300',
} as const;

export function parseGraphQLErrorCode(code: string | undefined): DataErrorType {
	if (!code) return DataErrorType.UNKNOWN_ERROR;
	const normalized = code.toUpperCase();

	// GraphQL standard error codes
	if (normalized === 'UNAUTHENTICATED') return DataErrorType.UNAUTHORIZED;
	if (normalized === 'FORBIDDEN') return DataErrorType.FORBIDDEN;
	if (normalized === 'GRAPHQL_VALIDATION_FAILED') return DataErrorType.QUERY_GENERATION_FAILED;
	if (normalized === 'INTERNAL_ERROR') return DataErrorType.QUERY_EXECUTION_FAILED;
	if (normalized === 'NOT_FOUND') return DataErrorType.TABLE_NOT_FOUND;
	if (normalized === 'INVALID_INPUT') return DataErrorType.INVALID_MUTATION_DATA;

	// PostgreSQL SQLSTATE codes (surfaced via PostGraphile)
	if (code === PG_ERROR_CODES.UNIQUE_VIOLATION) return DataErrorType.UNIQUE_VIOLATION;
	if (code === PG_ERROR_CODES.FOREIGN_KEY_VIOLATION) return DataErrorType.FOREIGN_KEY_VIOLATION;
	if (code === PG_ERROR_CODES.NOT_NULL_VIOLATION) return DataErrorType.NOT_NULL_VIOLATION;
	if (code === PG_ERROR_CODES.CHECK_VIOLATION) return DataErrorType.CHECK_VIOLATION;
	if (code === PG_ERROR_CODES.EXCLUSION_VIOLATION) return DataErrorType.EXCLUSION_VIOLATION;
	if (code === PG_ERROR_CODES.INSUFFICIENT_PRIVILEGE) return DataErrorType.FORBIDDEN;
	if (code === PG_ERROR_CODES.UNDEFINED_TABLE) return DataErrorType.TABLE_NOT_FOUND;
	if (code === PG_ERROR_CODES.UNDEFINED_COLUMN) return DataErrorType.INVALID_MUTATION_DATA;

	// Data exception codes -> validation failed
	if (code === PG_ERROR_CODES.NUMERIC_VALUE_OUT_OF_RANGE) return DataErrorType.VALIDATION_FAILED;
	if (code === PG_ERROR_CODES.STRING_DATA_RIGHT_TRUNCATION) return DataErrorType.VALIDATION_FAILED;
	if (code === PG_ERROR_CODES.INVALID_TEXT_REPRESENTATION) return DataErrorType.VALIDATION_FAILED;
	if (code === PG_ERROR_CODES.DATETIME_FIELD_OVERFLOW) return DataErrorType.VALIDATION_FAILED;

	return DataErrorType.UNKNOWN_ERROR;
}

function isGraphQLErrorLike(value: unknown): value is GraphQLError {
	return (
		!!value &&
		typeof value === 'object' &&
		'message' in value &&
		typeof (value as { message?: unknown }).message === 'string' &&
		!(value instanceof Error)
	);
}

function extractCodeFromMessage(message: string): string | undefined {
	const match = message.match(/\(\s*Code:\s*([A-Za-z0-9_]+)\s*\)/);
	return match?.[1];
}

function classifyByMessage(message: string): DataErrorType {
	const lower = message.toLowerCase();
	if (lower.includes('timeout') || lower.includes('timed out') || lower.includes('aborted')) {
		return DataErrorType.TIMEOUT_ERROR;
	}
	if (lower.includes('network') || lower.includes('fetch') || lower.includes('failed to fetch')) {
		return DataErrorType.NETWORK_ERROR;
	}
	if (lower.includes('not authorized') || lower.includes('unauthorized') || lower.includes('authentication required')) {
		return DataErrorType.UNAUTHORIZED;
	}
	if (lower.includes('forbidden') || lower.includes('access denied') || lower.includes('permission')) {
		return DataErrorType.FORBIDDEN;
	}
	if (lower.includes('validation')) {
		return DataErrorType.VALIDATION_FAILED;
	}
	// PostgreSQL constraint violation patterns in messages
	if (lower.includes('duplicate key') || lower.includes('already exists') || lower.includes('unique constraint')) {
		return DataErrorType.UNIQUE_VIOLATION;
	}
	if (lower.includes('foreign key constraint') || lower.includes('violates foreign key')) {
		return DataErrorType.FOREIGN_KEY_VIOLATION;
	}
	if (lower.includes('not-null constraint') || lower.includes('null value in column')) {
		return DataErrorType.NOT_NULL_VIOLATION;
	}
	if (lower.includes('check constraint')) {
		return DataErrorType.CHECK_VIOLATION;
	}
	return DataErrorType.UNKNOWN_ERROR;
}

/**
 * Extract PostgreSQL-specific details from error extensions.
 * PostGraphile surfaces these in the error.extensions object.
 */
interface PostgresErrorDetails {
	constraint?: string;
	column?: string;
	table?: string;
	detail?: string;
}

function extractPostgresDetails(extensions: Record<string, unknown> | undefined): PostgresErrorDetails {
	if (!extensions) return {};
	return {
		constraint: typeof extensions.constraint === 'string' ? extensions.constraint : undefined,
		column: typeof extensions.column === 'string' ? extensions.column : undefined,
		table: typeof extensions.table === 'string' ? extensions.table : undefined,
		detail: typeof extensions.detail === 'string' ? extensions.detail : undefined,
	};
}

/**
 * Try to extract the field name from a PostgreSQL error message or constraint name.
 */
function extractFieldFromError(message: string, constraint?: string, column?: string): string | undefined {
	// If column is provided directly, use it
	if (column) return column;

	// Try to extract from "column X" pattern
	const columnMatch = message.match(/column\s+"?([a-z_][a-z0-9_]*)"?/i);
	if (columnMatch) return columnMatch[1];

	// Try to extract from constraint name (often formatted as table_field_key or table_field_fkey)
	if (constraint) {
		const constraintMatch = constraint.match(/_([a-z_][a-z0-9_]*)_(?:key|fkey|check|pkey)$/i);
		if (constraintMatch) return constraintMatch[1];
	}

	// Try to extract from "Key (field)=" pattern in duplicate key errors
	const keyMatch = message.match(/Key\s+\(([a-z_][a-z0-9_]*)\)/i);
	if (keyMatch) return keyMatch[1];

	return undefined;
}

/**
 * Parse any error into a DataError.
 * Optional tableName adds context for data-layer operations.
 */
export function parseGraphQLError(error: unknown, tableName?: string): DataError {
	if (error instanceof DataError) {
		return error;
	}

	if (isGraphQLErrorLike(error)) {
		const extCode = error.extensions?.code;
		const mappedFromExt = parseGraphQLErrorCode(extCode);

		// Extract PostgreSQL-specific details
		const pgDetails = extractPostgresDetails(error.extensions);
		const effectiveTable = tableName || pgDetails.table;
		const fieldName = extractFieldFromError(error.message, pgDetails.constraint, pgDetails.column);

		if (mappedFromExt !== DataErrorType.UNKNOWN_ERROR) {
			switch (mappedFromExt) {
				case DataErrorType.UNAUTHORIZED:
					return createDataError.unauthorized(error.message, effectiveTable);
				case DataErrorType.FORBIDDEN:
					return createDataError.forbidden(effectiveTable);
				case DataErrorType.QUERY_GENERATION_FAILED:
					return createDataError.queryGenerationFailed(error.message, effectiveTable, extCode);
				case DataErrorType.QUERY_EXECUTION_FAILED:
					return createDataError.queryExecutionFailed(error.message, effectiveTable, extCode);
				case DataErrorType.TABLE_NOT_FOUND:
					return createDataError.tableNotFound(error.message, effectiveTable, extCode);
				case DataErrorType.INVALID_MUTATION_DATA:
					return createDataError.invalidMutationData(error.message, effectiveTable, extCode, error.extensions);
				// PostgreSQL constraint violations
				case DataErrorType.UNIQUE_VIOLATION:
					return createDataError.uniqueViolation(error.message, effectiveTable, fieldName, pgDetails.constraint);
				case DataErrorType.FOREIGN_KEY_VIOLATION:
					return createDataError.foreignKeyViolation(error.message, effectiveTable, fieldName, pgDetails.constraint);
				case DataErrorType.NOT_NULL_VIOLATION:
					return createDataError.notNullViolation(error.message, effectiveTable, fieldName, pgDetails.constraint);
				case DataErrorType.CHECK_VIOLATION:
					return createDataError.checkViolation(error.message, effectiveTable, fieldName, pgDetails.constraint);
				case DataErrorType.EXCLUSION_VIOLATION:
					return createDataError.exclusionViolation(error.message, effectiveTable, pgDetails.constraint);
				case DataErrorType.VALIDATION_FAILED:
					return createDataError.validationFailed(effectiveTable, [error.message]);
				default:
					break;
			}
		}

		// Fallback: classify by message content
		const fallbackType = classifyByMessage(error.message);
		switch (fallbackType) {
			case DataErrorType.VALIDATION_FAILED:
				return createDataError.validationFailed(effectiveTable, [error.message]);
			case DataErrorType.FORBIDDEN:
				return createDataError.forbidden(effectiveTable);
			case DataErrorType.UNAUTHORIZED:
				return createDataError.unauthorized('Authentication required', effectiveTable);
			case DataErrorType.TIMEOUT_ERROR:
				return createDataError.timeoutError(new Error(error.message), effectiveTable);
			case DataErrorType.NETWORK_ERROR:
				return createDataError.networkError(new Error(error.message), effectiveTable);
			case DataErrorType.UNIQUE_VIOLATION:
				return createDataError.uniqueViolation(error.message, effectiveTable, fieldName, pgDetails.constraint);
			case DataErrorType.FOREIGN_KEY_VIOLATION:
				return createDataError.foreignKeyViolation(error.message, effectiveTable, fieldName, pgDetails.constraint);
			case DataErrorType.NOT_NULL_VIOLATION:
				return createDataError.notNullViolation(error.message, effectiveTable, fieldName, pgDetails.constraint);
			case DataErrorType.CHECK_VIOLATION:
				return createDataError.checkViolation(error.message, effectiveTable, fieldName, pgDetails.constraint);
			default:
				return createDataError.unknown(new Error(error.message), effectiveTable);
		}
	}

	if (error instanceof Error) {
		const embeddedCode = extractCodeFromMessage(error.message);
		const mappedFromMessageCode = parseGraphQLErrorCode(embeddedCode);
		if (mappedFromMessageCode !== DataErrorType.UNKNOWN_ERROR) {
			switch (mappedFromMessageCode) {
				case DataErrorType.UNAUTHORIZED:
					return createDataError.unauthorized('Authentication required. Please log in again.', tableName);
				case DataErrorType.FORBIDDEN:
					return createDataError.forbidden(tableName);
				default:
					return new DataError(mappedFromMessageCode, error.message, { tableName, code: embeddedCode, originalError: error });
			}
		}

		const type = classifyByMessage(error.message);
		const fieldName = extractFieldFromError(error.message);
		switch (type) {
			case DataErrorType.NETWORK_ERROR:
				return createDataError.networkError(error, tableName);
			case DataErrorType.TIMEOUT_ERROR:
				return createDataError.timeoutError(error, tableName);
			case DataErrorType.UNAUTHORIZED:
				return createDataError.unauthorized(error.message, tableName);
			case DataErrorType.FORBIDDEN:
				return createDataError.forbidden(tableName);
			case DataErrorType.VALIDATION_FAILED:
				return createDataError.validationFailed(tableName, [error.message]);
			case DataErrorType.UNIQUE_VIOLATION:
				return createDataError.uniqueViolation(error.message, tableName, fieldName);
			case DataErrorType.FOREIGN_KEY_VIOLATION:
				return createDataError.foreignKeyViolation(error.message, tableName, fieldName);
			case DataErrorType.NOT_NULL_VIOLATION:
				return createDataError.notNullViolation(error.message, tableName, fieldName);
			case DataErrorType.CHECK_VIOLATION:
				return createDataError.checkViolation(error.message, tableName, fieldName);
			default:
				return createDataError.unknown(error, tableName);
		}
	}

	const errorMessage = typeof error === 'string' ? error : 'Unknown error occurred';
	return createDataError.unknown(new Error(errorMessage), tableName);
}

export function parseError(error: unknown): DataError {
	return parseGraphQLError(error);
}

export function handleDataError(error: unknown, tableName?: string): DataError {
	return error instanceof DataError ? error : parseGraphQLError(error, tableName);
}

export async function withRetry<T>(fn: () => Promise<T>, maxRetries = 3, delayMs = 1000): Promise<T> {
	let attempt = 0;

	while (true) {
		try {
			return await fn();
		} catch (error) {
			const dataError = parseGraphQLError(error);
			attempt += 1;

			if (!dataError.isRetryable() || attempt >= maxRetries) {
				throw dataError;
			}

			if (delayMs > 0) {
				await new Promise<void>((resolve) => setTimeout(resolve, delayMs));
			}
		}
	}
}

// ============================================================================
// Constraint Message Registry
// ============================================================================

/**
 * Constraint-specific human-friendly messages.
 * Keys can be:
 * - Exact constraint name: "database_schema_hash_key"
 * - Pattern with wildcard prefix: "*_name_key" (matches any table's name unique constraint)
 *
 * To add new translations, simply add entries to this map.
 */
export const CONSTRAINT_MESSAGES: Record<string, string> = {
	// Database provisioning
	// database_schema_hash_key = unique constraint on database name hash, means name conflict
	database_schema_hash_key: 'This database name is already taken. Please choose a different name.',
	database_name_key: 'This database name is already taken. Please choose a different name.',

	// Domain constraints
	domain_subdomain_domain_key: 'This subdomain is already in use for this domain.',

	// API constraints
	api_name_database_id_key: 'An API with this name already exists in this database.',

	// Generic patterns (checked after exact matches)
	// Use * prefix for suffix matching
	'*_email_key': 'This email address is already registered.',
	'*_name_key': 'This name is already taken.',
	'*_slug_key': 'This URL slug is already in use.',
};

/**
 * Get human-friendly message for a constraint violation.
 * Checks exact match first, then pattern matches with * prefix.
 */
export function getConstraintMessage(constraint: string | undefined): string | undefined {
	if (!constraint) return undefined;

	// Exact match first
	if (CONSTRAINT_MESSAGES[constraint]) {
		return CONSTRAINT_MESSAGES[constraint];
	}

	// Pattern match (keys starting with * are suffix patterns)
	for (const [pattern, message] of Object.entries(CONSTRAINT_MESSAGES)) {
		if (pattern.startsWith('*')) {
			const suffix = pattern.slice(1);
			if (constraint.endsWith(suffix)) {
				return message;
			}
		}
	}

	return undefined;
}

/**
 * Parse any error and return a human-readable message.
 * Use this in UI components for displaying errors to users.
 *
 * @param error - Any error (Error, GraphQL error, string, etc.)
 * @param tableName - Optional table name for context
 * @returns Human-friendly error message
 */
export function getHumanReadableError(error: unknown, tableName?: string): string {
	const dataError = parseGraphQLError(error, tableName);
	return dataError.getUserMessage();
}
