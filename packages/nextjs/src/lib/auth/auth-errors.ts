/**
 * Auth Error Handling
 *
 * Centralized error code mapping and parsing for auth forms.
 * Handles GraphQL errors, validation errors (Zod-like), and custom AuthErrors.
 *
 * Backend error codes handled:
 * - INCORRECT_PASSWORD: Wrong password
 * - PASSWORD_INSECURE: Password doesn't meet security requirements
 * - ACCOUNT_LOCKED_EXCEED_ATTEMPTS: Too many failed login attempts
 * - ACCOUNT_DISABLED: Account has been disabled
 * - ACCOUNT_EXISTS: Email already registered
 * - PASSWORD_LEN: Password length invalid (must be 8-63 characters)
 * - INVITE_NOT_FOUND: Invitation code not found
 * - INVITE_LIMIT: Invitation usage limit reached
 * - INVITE_EMAIL_NOT_FOUND: Email not associated with invitation
 */

// ============================================================================
// Error Code Constants
// ============================================================================

/**
 * Known backend error codes.
 * These codes are returned in GraphQL error extensions.
 */
export const ERROR_CODES = {
	// Auth errors - login
	INVALID_CREDENTIALS: 'INVALID_CREDENTIALS', // Generic - prevents user enumeration
	INCORRECT_PASSWORD: 'INCORRECT_PASSWORD',
	ACCOUNT_LOCKED_EXCEED_ATTEMPTS: 'ACCOUNT_LOCKED_EXCEED_ATTEMPTS',
	ACCOUNT_DISABLED: 'ACCOUNT_DISABLED',

	// Password validation errors
	PASSWORD_INSECURE: 'PASSWORD_INSECURE',
	PASSWORD_LEN: 'PASSWORD_LEN',

	// Registration errors
	ACCOUNT_EXISTS: 'ACCOUNT_EXISTS',

	// Invitation errors
	INVITE_NOT_FOUND: 'INVITE_NOT_FOUND',
	INVITE_LIMIT: 'INVITE_LIMIT',
	INVITE_EMAIL_NOT_FOUND: 'INVITE_EMAIL_NOT_FOUND',
} as const;

export type ErrorCode = (typeof ERROR_CODES)[keyof typeof ERROR_CODES];

// ============================================================================
// User-Friendly Error Messages
// ============================================================================

/**
 * User-friendly error messages for each error code.
 * These messages are shown to users in the UI.
 */
export const ERROR_MESSAGES: Record<ErrorCode, string> = {
	[ERROR_CODES.INVALID_CREDENTIALS]: 'Invalid email or password.',
	[ERROR_CODES.INCORRECT_PASSWORD]: 'The password you entered is incorrect. Please try again.',
	[ERROR_CODES.ACCOUNT_LOCKED_EXCEED_ATTEMPTS]:
		'Your account has been temporarily locked due to too many failed login attempts. Please try again later or reset your password.',
	[ERROR_CODES.ACCOUNT_DISABLED]:
		'Your account has been disabled. Please contact support for assistance.',
	[ERROR_CODES.PASSWORD_INSECURE]:
		'This password is not secure enough. Please choose a stronger password.',
	[ERROR_CODES.PASSWORD_LEN]: 'Password must be between 8 and 63 characters long.',
	[ERROR_CODES.ACCOUNT_EXISTS]:
		'An account with this email already exists. Please sign in or use a different email.',
	[ERROR_CODES.INVITE_NOT_FOUND]:
		'The invitation code is invalid or has expired. Please check the code or request a new invitation.',
	[ERROR_CODES.INVITE_LIMIT]:
		'This invitation has reached its usage limit. Please request a new invitation.',
	[ERROR_CODES.INVITE_EMAIL_NOT_FOUND]:
		'This email is not associated with the invitation. Please use the email address the invitation was sent to.',
};

/**
 * Generic fallback message when no specific error code is matched.
 */
export const DEFAULT_ERROR_MESSAGE = 'Something went wrong. Please try again.';

// ============================================================================
// AuthError Class
// ============================================================================

/**
 * Custom error class for authentication errors.
 * Provides typed error codes that map to user-friendly messages.
 *
 * @example
 * ```ts
 * // Throw with a known error code
 * throw new AuthError('INVALID_CREDENTIALS');
 *
 * // Throw with custom message override
 * throw new AuthError('ACCOUNT_DISABLED', 'Your account has been suspended.');
 *
 * // In catch block, get user-friendly message
 * catch (err) {
 *   if (err instanceof AuthError) {
 *     setError(err.userMessage);
 *   }
 * }
 * ```
 */
export class AuthError extends Error {
	public readonly code: ErrorCode;
	public readonly userMessage: string;

	constructor(code: ErrorCode, customMessage?: string) {
		const userMessage = customMessage ?? ERROR_MESSAGES[code];
		super(userMessage);
		this.name = 'AuthError';
		this.code = code;
		this.userMessage = userMessage;

		if (Error.captureStackTrace) {
			Error.captureStackTrace(this, AuthError);
		}
	}

	/**
	 * Check if an error is an AuthError with a specific code.
	 */
	static isCode(error: unknown, code: ErrorCode): error is AuthError {
		return error instanceof AuthError && error.code === code;
	}
}

/**
 * Create an AuthError for invalid credentials.
 * Use this when login fails due to null token response.
 * The generic message prevents user enumeration attacks.
 */
export function createInvalidCredentialsError(): AuthError {
	return new AuthError('INVALID_CREDENTIALS');
}

// ============================================================================
// Configuration
// ============================================================================

/**
 * Options for parseGraphQLError.
 */
export interface ParseGraphQLErrorOptions {
	/**
	 * Custom fallback message when no known error code is matched.
	 * Defaults to DEFAULT_ERROR_MESSAGE.
	 */
	defaultMessage?: string;

	/**
	 * Custom error code to message mapping to extend or override defaults.
	 * Merged with ERROR_MESSAGES (custom takes precedence).
	 */
	customMessages?: Record<string, string>;
}

// ============================================================================
// Error Parsing Utilities
// ============================================================================

/**
 * Shape of a GraphQL error with extensions.
 */
interface GraphQLErrorLike {
	message?: string;
	extensions?: {
		code?: string;
		[key: string]: unknown;
	};
}

/**
 * Check if a value looks like a GraphQL error object.
 */
function isGraphQLErrorLike(value: unknown): value is GraphQLErrorLike {
	if (!value || typeof value !== 'object') return false;
	return 'message' in value || 'extensions' in value;
}

/**
 * Shape of a validation error (Zod-like).
 * Detected by duck typing to avoid tight coupling to Zod.
 */
interface ValidationErrorLike {
	name: string;
	issues: Array<{ message: string; path?: (string | number)[] }>;
}

/**
 * Check if a value looks like a Zod validation error.
 * Uses duck typing (name + issues array) for portability.
 */
function isValidationError(value: unknown): value is ValidationErrorLike {
	if (!value || typeof value !== 'object') return false;
	const err = value as Record<string, unknown>;
	return (
		err.name === 'ZodError' &&
		Array.isArray(err.issues) &&
		err.issues.length > 0 &&
		typeof err.issues[0]?.message === 'string'
	);
}

/**
 * Extract error code from various error formats.
 *
 * Checks (in order):
 * 1. AuthError instance (has typed code)
 * 2. error.extensions.code (GraphQL error format)
 * 3. error.code (generic error format)
 * 4. Error code embedded in message (e.g., "Error (Code: ACCOUNT_EXISTS)")
 * 5. Direct code match in error message (e.g., "ACCOUNT_EXISTS")
 */
function extractErrorCode(error: unknown, knownCodes: string[]): string | null {
	// Handle AuthError instances
	if (error instanceof AuthError) {
		return error.code;
	}

	// Handle GraphQL error with extensions
	if (isGraphQLErrorLike(error) && error.extensions?.code) {
		return String(error.extensions.code);
	}

	// Handle error object with code property
	if (error && typeof error === 'object' && 'code' in error) {
		const code = (error as { code: unknown }).code;
		if (typeof code === 'string') return code;
	}

	// Extract message for pattern matching
	let message: string | null = null;
	if (error instanceof Error) {
		message = error.message;
	} else if (isGraphQLErrorLike(error) && error.message) {
		message = error.message;
	} else if (typeof error === 'string') {
		message = error;
	}

	if (!message) return null;

	// Try to extract code from message pattern: "(Code: ERROR_CODE)"
	const codeMatch = message.match(/\(\s*[Cc]ode:\s*([A-Z_]+)\s*\)/);
	if (codeMatch) {
		return codeMatch[1];
	}

	// Check if any known error code appears in the message
	for (const code of knownCodes) {
		if (message.includes(code)) {
			return code;
		}
	}

	return null;
}

/**
 * Check if an error code is a known error code.
 */
export function isKnownErrorCode(code: string | null): code is ErrorCode {
	if (!code) return false;
	return Object.values(ERROR_CODES).includes(code as ErrorCode);
}

/**
 * Get the user-friendly message for an error code.
 */
export function getErrorMessage(code: ErrorCode): string {
	return ERROR_MESSAGES[code];
}

/**
 * Check if a message looks like technical/internal error (not user-friendly).
 */
function isTechnicalMessage(message: string): boolean {
	const lower = message.toLowerCase();
	return (
		lower.includes('graphql') ||
		lower.includes('fetch') ||
		lower.includes('network') ||
		lower.includes('econnrefused') ||
		lower.includes('undefined') ||
		lower.includes('null') ||
		lower.includes('timeout') ||
		lower.includes('connection') ||
		lower.includes('socket') ||
		lower.includes('enotfound') ||
		lower.includes('abort')
	);
}

// ============================================================================
// Main Parse Function
// ============================================================================

/**
 * Result of parsing a GraphQL error.
 */
export interface ParsedGraphQLError {
	/** The extracted error code, if any */
	code: string | null;
	/** User-friendly error message */
	message: string;
	/** Whether a known error code was found */
	isKnownError: boolean;
	/** Original error for debugging */
	originalError: unknown;
}

/**
 * Parse a GraphQL error and return a user-friendly message.
 *
 * This function:
 * 1. Extracts the error code from various error formats
 * 2. Maps known codes to user-friendly messages
 * 3. Falls back to generic message for unknown/technical errors
 *
 * @param error - The error to parse (can be Error, GraphQL error, string, etc.)
 * @param options - Optional configuration for custom messages
 * @returns ParsedGraphQLError with code, message, and metadata
 *
 * @example
 * ```ts
 * // Basic usage
 * const { message } = parseGraphQLError(error);
 * setError(message);
 *
 * // With custom default message
 * const { message } = parseGraphQLError(error, {
 *   defaultMessage: 'Unable to sign in. Please try again.'
 * });
 *
 * // With custom error code mappings
 * const { message } = parseGraphQLError(error, {
 *   customMessages: {
 *     'CUSTOM_ERROR': 'A custom error occurred.',
 *   }
 * });
 * ```
 */
export function parseGraphQLError(
	error: unknown,
	options: ParseGraphQLErrorOptions = {}
): ParsedGraphQLError {
	// Fast path for AuthError - already has user-friendly message
	if (error instanceof AuthError) {
		return {
			code: error.code,
			message: error.userMessage,
			isKnownError: true,
			originalError: error,
		};
	}

	// Handle validation errors (Zod-like) - detect by shape, not import
	// This keeps the module portable without tight coupling to Zod
	if (isValidationError(error)) {
		// Get the first error message (most relevant for form validation)
		const firstIssue = error.issues[0];
		const message = firstIssue?.message || 'Validation failed. Please check your input.';
		return {
			code: 'VALIDATION_ERROR',
			message,
			isKnownError: true,
			originalError: error,
		};
	}

	const { defaultMessage = DEFAULT_ERROR_MESSAGE, customMessages = {} } = options;

	// Merge custom messages with defaults (custom takes precedence)
	const allMessages: Record<string, string> = { ...ERROR_MESSAGES, ...customMessages };
	const allKnownCodes = Object.keys(allMessages);

	const code = extractErrorCode(error, allKnownCodes);
	const isKnown = code !== null && code in allMessages;

	let message: string;
	if (isKnown && code) {
		message = allMessages[code];
	} else {
		// Use error message if available and not technical
		if (error instanceof Error && error.message && !isTechnicalMessage(error.message)) {
			message = error.message;
		} else {
			message = defaultMessage;
		}
	}

	return {
		code: isKnown ? code : null,
		message,
		isKnownError: isKnown,
		originalError: error,
	};
}
