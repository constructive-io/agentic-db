import type { DocumentTypeDecoration } from '@graphql-typed-document-node/core';

/**
 * Enhanced TypedDocumentString with better type inference capabilities
 * Compatible with GraphQL codegen client preset and provides type safety
 * for operations that aren't processed by codegen
 */
export class TypedDocumentString<TResult = any, TVariables = any>
	extends String
	implements DocumentTypeDecoration<TResult, TVariables>
{
	/** Same shape as the codegen implementation so structural typing matches */
	__apiType?: NonNullable<DocumentTypeDecoration<TResult, TVariables>['__apiType']>;
	__meta__?: Record<string, any>;

	private value: string;

	constructor(value: string, meta?: Record<string, any>) {
		super(value);
		this.value = value;
		this.__meta__ = {
			hash: this.generateHash(value),
			...meta,
		};
	}

	private generateHash(value: string): string {
		// Simple hash for unique identification
		let hash = 0;
		for (let i = 0; i < value.length; i++) {
			const char = value.charCodeAt(i);
			hash = (hash << 5) - hash + char;
			hash = hash & hash; // Convert to 32-bit integer
		}
		return Math.abs(hash).toString(36);
	}

	override toString(): string & DocumentTypeDecoration<TResult, TVariables> {
		return this.value as string & DocumentTypeDecoration<TResult, TVariables>;
	}
}
