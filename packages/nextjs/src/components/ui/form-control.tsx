'use client';

import * as React from 'react';
import { Slot } from '@/lib/slot';

import { cn } from '@/lib/utils';
import { Label } from '@/components/ui/label';

type FormControlLayout = 'stacked' | 'floating';

interface FormControlProps {
  children: React.ReactElement;
  label: string;
  id?: string;
  layout?: FormControlLayout;
  error?: string;
  className?: string;
}

function FormControl({ children, label, id, layout = 'stacked', error, className }: FormControlProps) {
  const generatedId = React.useId();
  const inputId = id || generatedId;
  const errorId = error ? `${inputId}-error` : undefined;

  const childProps: Record<string, unknown> = {
    id: inputId,
    'aria-invalid': error ? true : undefined,
    'aria-describedby': errorId,
  };

  if (layout === 'floating') {
    childProps.placeholder = ' ';
  }

  const childWithProps = React.cloneElement(children, childProps);

  if (layout === 'floating') {
    return (
      <div className={cn('space-y-1', className)}>
        <div
          className={cn(
            'relative',
            // Float label when focused
            'has-[input:focus-visible]:[&_[data-slot=form-control-label]]:top-2',
            'has-[input:focus-visible]:[&_[data-slot=form-control-label]]:translate-y-0',
            'has-[input:focus-visible]:[&_[data-slot=form-control-label]]:scale-[0.7]',
            'has-[input:focus-visible]:[&_[data-slot=form-control-label]]:text-primary/80',
            // Float label when there's a value
            'has-[input:not(:placeholder-shown)]:[&_[data-slot=form-control-label]]:top-2',
            'has-[input:not(:placeholder-shown)]:[&_[data-slot=form-control-label]]:translate-y-0',
            'has-[input:not(:placeholder-shown)]:[&_[data-slot=form-control-label]]:scale-[0.7]',
            // Error
            error && 'has-[input:focus-visible]:[&_[data-slot=form-control-label]]:text-destructive',
          )}
        >
          <Slot
            className={cn(
              error && 'border-destructive focus-visible:ring-destructive/20',
            )}
          >
            {childWithProps}
          </Slot>
          <Label
            htmlFor={inputId}
            data-slot="form-control-label"
            className={cn(
              // Base: centered when empty
              'pointer-events-none absolute start-3 top-1/2 -translate-y-1/2',
              // Small, subtle typography
              'origin-left text-[13px] leading-none font-normal text-muted-foreground/60 select-none',
              // Snappy transition
              'transition-[top,transform,color] duration-200 ease-out',
              // Error state
              error && 'text-destructive',
            )}
          >
            {label}
          </Label>
        </div>
        {error && (
          <p id={errorId} className='text-destructive text-xs' role='alert'>
            {error}
          </p>
        )}
      </div>
    );
  }

  return (
    <div className={cn('grid gap-2', className)}>
      <Label htmlFor={inputId} className={cn(error && 'text-destructive')}>
        {label}
      </Label>
      {childWithProps}
      {error && (
        <p id={errorId} className='text-destructive text-sm' role='alert'>
          {error}
        </p>
      )}
    </div>
  );
}

export { FormControl, type FormControlLayout };
