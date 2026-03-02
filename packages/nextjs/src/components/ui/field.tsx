'use client';

import { cn } from '@/lib/utils';
import { Label } from '@/components/ui/label';

interface FieldProps {
	/** Field label text */
	label: string;
	/** Optional description text shown below the control */
	description?: string;
	/** Error message - shows in destructive color */
	error?: string;
	/** Shows required indicator (*) after label */
	required?: boolean;
	/** HTML id for the form control - used for label's htmlFor */
	htmlFor?: string;
	/** Additional className for the wrapper */
	className?: string;
	/** The form control (InputGroup, Input, Select, etc.) */
	children: React.ReactNode;
}

/**
 * Field wraps a form control with label, description, and error message.
 * Works standalone without any form library dependency.
 *
 * @example
 * ```tsx
 * <Field label="Email" required error={errors.email} htmlFor="email">
 *   <InputGroup>
 *     <InputGroupAddon><Mail /></InputGroupAddon>
 *     <InputGroupInput id="email" type="email" placeholder="name@example.com" />
 *   </InputGroup>
 * </Field>
 * ```
 */
function Field({
	label,
	description,
	error,
	required,
	htmlFor,
	className,
	children,
}: FieldProps) {
	return (
		<div data-slot="field" className={cn('grid gap-2', className)}>
			<Label
				htmlFor={htmlFor}
				data-slot="field-label"
				className={cn(error && 'text-destructive')}
			>
				{label}
				{required && (
					<span className="text-destructive ml-1" aria-hidden="true">
						*
					</span>
				)}
			</Label>

			{children}

			{description && (
				<p
					data-slot="field-description"
					className="text-muted-foreground text-sm"
				>
					{description}
				</p>
			)}

			{error && (
				<p
					data-slot="field-error"
					className="text-destructive text-sm"
					role="alert"
				>
					{error}
				</p>
			)}
		</div>
	);
}

/**
 * FieldRow is a horizontal layout variant for inline controls like checkboxes and switches.
 * Places label beside the control instead of above.
 *
 * @example
 * ```tsx
 * <FieldRow label="Enable notifications" description="Receive email updates" htmlFor="notifications">
 *   <Switch id="notifications" />
 * </FieldRow>
 * ```
 */
interface FieldRowProps extends Omit<FieldProps, 'required'> {
	/** Position of the label relative to the control */
	labelPosition?: 'start' | 'end';
}

function FieldRow({
	label,
	description,
	error,
	labelPosition = 'end',
	htmlFor,
	className,
	children,
}: FieldRowProps) {
	const labelElement = (
		<Label
			htmlFor={htmlFor}
			data-slot="field-label"
			className={cn(
				'text-sm font-medium leading-none',
				error && 'text-destructive',
			)}
		>
			{label}
		</Label>
	);

	return (
		<div data-slot="field-row" className={cn('grid gap-2', className)}>
			<div className="flex items-center gap-2">
				{labelPosition === 'start' && labelElement}
				{children}
				{labelPosition === 'end' && labelElement}
			</div>

			{description && (
				<p
					data-slot="field-description"
					className="text-muted-foreground text-sm"
				>
					{description}
				</p>
			)}

			{error && (
				<p
					data-slot="field-error"
					className="text-destructive text-sm"
					role="alert"
				>
					{error}
				</p>
			)}
		</div>
	);
}

export { Field, FieldRow, type FieldProps, type FieldRowProps };
