import { showErrorToast } from './toast-error';
import { showInfoToast } from './toast-info';
import { showSuccessToast } from './toast-success';
import { showWarningToast } from './toast-warning';

// Re-export types for convenience
export type { ToastErrorProps } from './toast-error';
export type { ToastInfoProps } from './toast-info';
export type { ToastSuccessProps } from './toast-success';
export type { ToastWarningProps } from './toast-warning';

// Unified toast API
export const toast = {
	error: showErrorToast,
	info: showInfoToast,
	success: showSuccessToast,
	warning: showWarningToast,
};

// Also export individual functions for backward compatibility
export { showErrorToast, showInfoToast, showSuccessToast, showWarningToast };
