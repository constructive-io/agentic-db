/**
 * Utility functions for TanStack Form integration
 */

/**
 * Form submission handler type
 */
export type FormSubmitHandler<T> = (data: T) => Promise<void> | void;

/**
 * Form state helper
 */
export interface FormState {
	isSubmitting: boolean;
	isValid: boolean;
	errors: Record<string, string[]>;
}

/**
 * Common form configuration for TanStack Form
 */
export const getFormConfig = <T>(defaultValues: T, onSubmit: FormSubmitHandler<T>) => ({
	defaultValues,
	onSubmit: async ({ value }: { value: T }) => {
		try {
			await onSubmit(value);
		} catch (error) {
			console.error('Form submission error:', error);
			throw error;
		}
	},
});

/**
 * Field validation helper
 */
export const createFieldValidator = <T>(
	validator: (value: T) => string | undefined,
	asyncValidator?: (value: T) => Promise<string | undefined>,
) => ({
	onChange: ({ value }: { value: T }) => validator(value),
	onBlur: asyncValidator ? ({ value }: { value: T }) => asyncValidator(value) : undefined,
});

/**
 * Form error handling utilities
 */
export const formatFormError = (error: unknown): string => {
	if (error instanceof Error) {
		return error.message;
	}
	if (typeof error === 'string') {
		return error;
	}
	return 'An unexpected error occurred';
};

/**
 * API error response handler
 */
export interface ApiErrorResponse {
	message: string;
	field?: string;
	code?: string;
}

export const handleApiError = (error: ApiErrorResponse): string => {
	return error.message || 'An error occurred while processing your request';
};

/**
 * Form submission states
 */
export enum FormSubmissionState {
	IDLE = 'idle',
	SUBMITTING = 'submitting',
	SUCCESS = 'success',
	ERROR = 'error',
}

/**
 * Form submission result
 */
export interface FormSubmissionResult {
	success: boolean;
	message?: string;
	data?: any;
	error?: string;
}

/**
 * Create form submission handler with error handling
 */
export const createSubmissionHandler = <T>(handler: (data: T) => Promise<FormSubmissionResult>) => {
	return async (data: T): Promise<FormSubmissionResult> => {
		try {
			const result = await handler(data);
			return result;
		} catch (error) {
			return {
				success: false,
				error: formatFormError(error),
			};
		}
	};
};

/**
 * Debounce function for async validation
 */
export const debounce = <T extends (...args: any[]) => any>(func: T, delay: number): T => {
	let timeoutId: NodeJS.Timeout;
	return ((...args: Parameters<T>) => {
		clearTimeout(timeoutId);
		timeoutId = setTimeout(() => func(...args), delay);
	}) as T;
};

/**
 * Form field focus management
 */
export const focusFirstErrorField = (formElement: HTMLFormElement) => {
	const firstErrorField = formElement.querySelector('[aria-invalid="true"]') as HTMLElement;
	if (firstErrorField) {
		firstErrorField.focus();
	}
};
