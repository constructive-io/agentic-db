import type { RefObject } from 'react';
import { Input } from '@/components/ui/input';
import { FormControl, type FormControlLayout } from '@/components/ui/form-control';

interface FormFieldProps {
  field: any;
  label: string;
  placeholder?: string;
  type?: string;
  className?: string;
  layout?: FormControlLayout;
  inputRef?: RefObject<HTMLInputElement | null>;
  testId?: string;
}

export function FormField({
  field,
  label,
  placeholder,
  type = 'text',
  className,
  layout = 'floating',
  inputRef,
}: FormFieldProps) {
  const errors = field.state.meta.errors?.filter(Boolean) ?? [];
  const hasError = errors.length > 0;
  const errorMessage = errors[0] as string | undefined;

  return (
    <FormControl
      label={label}
      id={field.name}
      layout={layout}
      error={hasError ? errorMessage : undefined}
      className={className}
    >
      <Input
        ref={inputRef}
        name={field.name}
        data-testid={field.name}
        type={type}
        placeholder={placeholder}
        value={field.state.value || ''}
        onChange={(e) => field.handleChange(e.target.value)}
        onBlur={field.handleBlur}
      />
    </FormControl>
  );
}
