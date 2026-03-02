'use client';

import * as React from 'react';
import { ChevronRight } from 'lucide-react';

import { cn } from '@/lib/utils';

import type { CardSpec } from './stack.types';

// =============================================================================
// Size Variants
// =============================================================================

type HeaderSize = 'sm' | 'md' | 'lg';

const sizeStyles = {
  sm: {
    title: 'text-sm font-semibold',
    description: 'text-xs',
    height: 'h-12',
    heightWithDesc: 'h-14',
  },
  md: {
    title: 'text-base font-semibold',
    description: 'text-sm',
    height: 'h-14',
    heightWithDesc: 'h-18',
  },
  lg: {
    title: 'text-lg font-semibold',
    description: 'text-sm',
    height: 'h-16',
    heightWithDesc: 'h-20',
  },
} satisfies Record<HeaderSize, { title: string; description: string; height: string; heightWithDesc: string }>;

// =============================================================================
// Component
// =============================================================================

export type StackHeaderProps = {
  /** The card spec */
  card: CardSpec;
  /** Close handler */
  onClose: () => void;
  /** Additional class names */
  className?: string;
  /** Custom title renderer */
  renderTitle?: (card: CardSpec) => React.ReactNode;
};

export function StackHeader({ card, onClose, className, renderTitle }: StackHeaderProps) {
  const title = renderTitle ? renderTitle(card) : card.title;
  const hasDescription = !!card.description;
  const size = card.headerSize ?? 'md';
  const styles = sizeStyles[size];

  return (
    <div
      data-slot="stack-header"
      className={cn(
        'flex shrink-0 items-center justify-between',
        'border-b border-border/50',
        'px-4',
        hasDescription ? styles.heightWithDesc : styles.height,
        className
      )}
    >
      {/* Title & Description */}
      <div className="flex-1 min-w-0">
        {title && <h2 className={cn('text-foreground truncate', styles.title)}>{title}</h2>}
        {card.description && (
          <p className={cn('text-muted-foreground truncate', styles.description)}>{card.description}</p>
        )}
      </div>

      {/* Close button */}
      <button
        type="button"
        onClick={onClose}
        className={cn(
          'flex h-8 w-8 items-center justify-center',
          'rounded-md',
          'text-muted-foreground hover:text-foreground',
          'hover:bg-muted/50',
          'transition-colors',
          'focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring'
        )}
        aria-label="Close"
      >
        <ChevronRight className="h-5 w-5" />
      </button>
    </div>
  );
}

export type StackHeaderSlotProps = {
  /** Additional class names */
  className?: string;
  children: React.ReactNode;
};

/** Slot for custom header content */
export function StackHeaderSlot({ className, children }: StackHeaderSlotProps) {
  return (
    <div
      data-slot="stack-header-slot"
      className={cn('flex h-12 shrink-0 items-center', 'border-b border-border/50', 'px-4', className)}
    >
      {children}
    </div>
  );
}
