'use client';

import * as React from 'react';
import { QueryErrorResetBoundary } from '@tanstack/react-query';
import { RiAlertLine, RiRefreshLine, RiWifiOffLine } from '@remixicon/react';

import { cn } from '@/lib/utils';
import { Button } from '@/components/ui/button';

import { DataError, DataErrorType, parseError } from './error-handler';

// ============================================================================
// Types
// ============================================================================

export interface QueryErrorBoundaryProps {
	children: React.ReactNode;
	fallback?: (props: QueryErrorFallbackProps) => React.ReactNode;
	onError?: (error: DataError) => void;
	onReset?: () => void;
	className?: string;
}

export interface QueryErrorFallbackProps {
	error: DataError;
	resetErrorBoundary: () => void;
}

interface ErrorBoundaryState {
	hasError: boolean;
	error: DataError | null;
}

// ============================================================================
// Error Display
// ============================================================================

function getErrorDisplay(error: DataError) {
	switch (error.type) {
		case DataErrorType.NETWORK_ERROR:
			return {
				icon: RiWifiOffLine,
				title: 'Connection Error',
				description: error.getUserMessage(),
				iconClass: 'text-amber-500',
				containerClass: 'bg-amber-500/5 border-amber-500/20',
			};

		case DataErrorType.TIMEOUT_ERROR:
			return {
				icon: RiAlertLine,
				title: 'Request Timeout',
				description: error.getUserMessage(),
				iconClass: 'text-amber-500',
				containerClass: 'bg-amber-500/5 border-amber-500/20',
			};

		case DataErrorType.UNAUTHORIZED:
			return {
				icon: RiAlertLine,
				title: 'Authentication Required',
				description: error.getUserMessage(),
				iconClass: 'text-destructive',
				containerClass: 'bg-destructive/5 border-destructive/20',
			};

		case DataErrorType.FORBIDDEN:
			return {
				icon: RiAlertLine,
				title: 'Access Denied',
				description: error.getUserMessage(),
				iconClass: 'text-destructive',
				containerClass: 'bg-destructive/5 border-destructive/20',
			};

		default:
			return {
				icon: RiAlertLine,
				title: 'Something went wrong',
				description: error.getUserMessage(),
				iconClass: 'text-destructive',
				containerClass: 'bg-destructive/5 border-destructive/20',
			};
	}
}

export function DefaultQueryErrorFallback({ error, resetErrorBoundary }: QueryErrorFallbackProps) {
	const display = getErrorDisplay(error);
	const Icon = display.icon;
	const canRetry = error.isRetryable();

	return (
		<div className='flex flex-1 items-center justify-center p-8'>
			<div className='flex flex-col items-center gap-3 text-center max-w-sm'>
				<div
					className={cn(
						'flex h-10 w-10 items-center justify-center rounded-lg border',
						display.containerClass
					)}
				>
					<Icon className={cn('h-5 w-5', display.iconClass)} />
				</div>

				<div className='space-y-1'>
					<p className='text-sm font-medium text-foreground'>{display.title}</p>
					<p className='text-xs text-muted-foreground leading-relaxed'>{display.description}</p>
				</div>

				{canRetry && (
					<Button
						variant='outline'
						size='sm'
						onClick={resetErrorBoundary}
						className='mt-2 h-8 text-xs'
					>
						<RiRefreshLine className='mr-1.5 h-3.5 w-3.5' />
						Try again
					</Button>
				)}
			</div>
		</div>
	);
}

// ============================================================================
// Error Boundary
// ============================================================================

class QueryErrorBoundaryInner extends React.Component<
	QueryErrorBoundaryProps & { resetQueries: () => void },
	ErrorBoundaryState
> {
	constructor(props: QueryErrorBoundaryProps & { resetQueries: () => void }) {
		super(props);
		this.state = { hasError: false, error: null };
	}

	static getDerivedStateFromError(error: unknown): ErrorBoundaryState {
		const dataError = error instanceof DataError ? error : parseError(error);
		return { hasError: true, error: dataError };
	}

	componentDidCatch(error: unknown, errorInfo: React.ErrorInfo) {
		const dataError = error instanceof DataError ? error : parseError(error);

		console.error('Query Error Boundary caught error:', {
			...dataError.getLogDetails(),
			componentStack: errorInfo.componentStack,
		});

		this.props.onError?.(dataError);
	}

	handleReset = () => {
		this.props.resetQueries();
		this.props.onReset?.();
		this.setState({ hasError: false, error: null });
	};

	render() {
		if (this.state.hasError && this.state.error) {
			const fallbackProps: QueryErrorFallbackProps = {
				error: this.state.error,
				resetErrorBoundary: this.handleReset,
			};

			if (this.props.fallback) {
				return this.props.fallback(fallbackProps);
			}

			return (
				<div className={this.props.className}>
					<DefaultQueryErrorFallback {...fallbackProps} />
				</div>
			);
		}

		return this.props.children;
	}
}

/**
 * Error boundary that integrates with React Query's error handling.
 */
export function QueryErrorBoundary({
	children,
	fallback,
	onError,
	onReset,
	className,
}: QueryErrorBoundaryProps) {
	return (
		<QueryErrorResetBoundary>
			{({ reset }) => (
				<QueryErrorBoundaryInner
					fallback={fallback}
					onError={onError}
					onReset={onReset}
					resetQueries={reset}
					className={className}
				>
					{children}
				</QueryErrorBoundaryInner>
			)}
		</QueryErrorResetBoundary>
	);
}

// ============================================================================
// Hook for imperative error handling
// ============================================================================

export interface UseQueryErrorResult {
	error: DataError | null;
	clearError: () => void;
	setError: (error: unknown) => void;
}

export function useQueryError(): UseQueryErrorResult {
	const [error, setErrorState] = React.useState<DataError | null>(null);

	const clearError = React.useCallback(() => {
		setErrorState(null);
	}, []);

	const setError = React.useCallback((rawError: unknown) => {
		const dataError = rawError instanceof DataError ? rawError : parseError(rawError);
		setErrorState(dataError);
	}, []);

	return { error, clearError, setError };
}

// Re-export types
export { DataError, DataErrorType } from './error-handler';
