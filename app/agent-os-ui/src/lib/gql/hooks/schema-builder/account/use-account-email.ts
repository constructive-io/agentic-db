/**
 * Hooks for managing user email addresses
 * Tier 4 wrapper: Uses SDK hooks + cache invalidation
 */
import { useMemo } from 'react';
import { useQueryClient } from '@tanstack/react-query';

import type { SchemaContext } from '@/app-config';
import {
	useCreateEmailMutation,
	useDeleteEmailMutation,
	useEmailsQuery,
	useUpdateEmailMutation,
	useVerifyEmailMutation as useSDKVerifyEmailMutation,
} from '@sdk/api';

import { accountProfileQueryKeys } from './use-account-profile';

export interface UseAccountEmailOptions {
	userId: string;
	enabled?: boolean;
}

export interface UseAccountEmailResult {
	email: string | null;
	isLoading: boolean;
	error: Error | null;
	refetch: () => Promise<unknown>;
}

/**
 * @deprecated TEMPORARY: This hook fetches emails via a separate query.
 * TODO: Confirm with backend if there should be a dedicated query to get
 * the current logged-in account's email, or if this separate fetch approach
 * is the intended pattern going forward.
 */
export function useAccountEmail(options: UseAccountEmailOptions): UseAccountEmailResult {
	const { userId, enabled = true } = options;

	const { data, isLoading, error, refetch } = useEmailsQuery({
		selection: {
			fields: { id: true, email: true, isPrimary: true, isVerified: true, ownerId: true },
			where: { ownerId: { equalTo: userId } },
			first: 50,
		},
		enabled: enabled && !!userId,
		staleTime: 30 * 1000,
		refetchOnMount: true,
	});

	const email = useMemo(() => {
		const nodes = data?.emails?.nodes ?? [];
		if (nodes.length === 0) return null;
		const primary = nodes.find((node) => node.isPrimary);
		return ((primary ?? nodes[0])?.email as string | null) ?? null;
	}, [data]);

	return { email, isLoading, error: error ?? null, refetch };
}

export interface UpdateEmailInput {
	userId: string;
	currentEmailId: string;
	newEmail: string;
	currentEmail: string;
	isPrimary?: boolean;
	isVerified?: boolean;
	context?: SchemaContext;
}

export function useUpdateEmail(_defaultContext: SchemaContext = 'schema-builder') {
	const queryClient = useQueryClient();
	const createEmailMutation = useCreateEmailMutation({ selection: { fields: { id: true } } });
	const updateEmailMutation = useUpdateEmailMutation({ selection: { fields: { id: true } } });
	const deleteEmailMutation = useDeleteEmailMutation({ selection: { fields: { id: true } } });

	const updateEmail = async (input: UpdateEmailInput) => {
		const emailChanged = input.newEmail !== input.currentEmail;

		if (emailChanged) {
			// Create new email first
			await createEmailMutation.mutateAsync({
				email: input.newEmail,
				isPrimary: input.isPrimary ?? true,
				isVerified: input.isVerified ?? false,
				ownerId: input.userId,
			});

			// Then delete old email
			await deleteEmailMutation.mutateAsync({ id: input.currentEmailId });
		} else {
			// Just update existing email properties
			const patch: { isPrimary?: boolean; isVerified?: boolean } = {};
			if (input.isPrimary !== undefined) patch.isPrimary = input.isPrimary;
			if (input.isVerified !== undefined) patch.isVerified = input.isVerified;

			if (Object.keys(patch).length > 0) {
				await updateEmailMutation.mutateAsync({
					id: input.currentEmailId, emailPatch: patch,
				});
			}
		}

		// Invalidate profile cache
		queryClient.invalidateQueries({
			queryKey: accountProfileQueryKeys.detail(_defaultContext, input.userId),
		});

		return { success: true };
	};

	return {
		updateEmail,
		isUpdating: createEmailMutation.isPending || updateEmailMutation.isPending || deleteEmailMutation.isPending,
		error: createEmailMutation.error || updateEmailMutation.error || deleteEmailMutation.error,
		reset: () => {
			createEmailMutation.reset();
			updateEmailMutation.reset();
			deleteEmailMutation.reset();
		},
	};
}

export interface VerifyEmailInput {
	emailId: string;
	token: string;
	context?: SchemaContext;
}

export function useVerifyEmail(_defaultContext: SchemaContext = 'schema-builder') {
	const queryClient = useQueryClient();
	const verifyMutation = useSDKVerifyEmailMutation({ selection: { fields: { result: true } } });

	return {
		verifyEmail: async (input: VerifyEmailInput) => {
			const result = await verifyMutation.mutateAsync({
				input: { emailId: input.emailId, token: input.token },
			});
			// Invalidate profile cache
			queryClient.invalidateQueries({ queryKey: accountProfileQueryKeys.all });
			return result.verifyEmail?.result ?? false;
		},
		isVerifying: verifyMutation.isPending,
		error: verifyMutation.error,
		reset: verifyMutation.reset,
	};
}
