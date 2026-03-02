'use client';

import * as React from "react";
import Image from "next/image";
import Link from "next/link";
import type { Route } from "next";
import { cn } from "@/lib/utils";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { InputGroup, InputGroupAddon, InputGroupInput } from "@/components/ui/input-group";
import { RiExpandUpDownLine, RiAddLine, RiCheckLine, RiArrowRightLine, RiSearchLine } from "@remixicon/react";
import type { EntityLevel, Entity } from "./app-shell.types";

interface EntitySwitcherProps {
  level: EntityLevel;
  size?: 'sm' | 'md';
  className?: string;
}

function LetterAvatar({ name, className }: { name: string; className?: string }) {
  return (
    <div
      className={cn(
        'bg-muted text-muted-foreground flex items-center justify-center rounded-md font-medium',
        className,
      )}
    >
      {name.charAt(0).toUpperCase()}
    </div>
  );
}

function EntityAvatar({ entity, size = 'md' }: { entity: Entity; size?: 'sm' | 'md' }) {
  const [imgError, setImgError] = React.useState(false);
  const sizeClasses = size === 'sm' ? 'h-5 w-5 text-xs' : 'h-6 w-6 text-sm';
  const pixelSize = size === 'sm' ? 20 : 24;

  // Show letter avatar if image fails or no avatar provided
  if (entity.avatar && !imgError) {
    return (
      <div className={cn('relative shrink-0 overflow-hidden rounded-md', sizeClasses)}>
        <Image
          src={entity.avatar}
          alt={entity.name}
          width={pixelSize}
          height={pixelSize}
          className='h-full w-full object-cover'
          onError={() => setImgError(true)}
        />
      </div>
    );
  }

  if (entity.icon && !imgError) {
    const Icon = entity.icon;
    return (
      <div className={cn('text-muted-foreground flex shrink-0 items-center justify-center', sizeClasses)}>
        <Icon className='h-4 w-4' aria-hidden='true' />
      </div>
    );
  }

  // Fallback: first letter avatar
  return <LetterAvatar name={entity.name} className={sizeClasses} />;
}

export function EntitySwitcher({
  level,
  size = "md",
  className,
}: EntitySwitcherProps) {
  const [searchValue, setSearchValue] = React.useState("");
  const [open, setOpen] = React.useState(false);
  const activeEntity = level.entities.find((e) => e.id === level.activeEntityId);

  // Filter entities based on search
  const filteredEntities = React.useMemo(() => {
    if (!searchValue.trim()) return level.entities;
    return level.entities.filter((entity) =>
      entity.name.toLowerCase().includes(searchValue.toLowerCase())
    );
  }, [level.entities, searchValue]);

  // Reset search when dropdown closes
  React.useEffect(() => {
    if (!open) {
      setSearchValue("");
    }
  }, [open]);

  if (!level.entities.length && !level.onCreateNew) {
    return null;
  }

  return (
    <DropdownMenu open={open} onOpenChange={setOpen}>
      <DropdownMenuTrigger
        className={cn(
          "flex items-center gap-2 rounded-md px-2 py-1.5 text-sm font-medium",
          "transition-colors duration-200",
          "hover:bg-accent focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring",
          size === "sm" && "text-xs px-1.5 py-1",
          className
        )}
      >
        {activeEntity ? (
          <>
            <EntityAvatar entity={activeEntity} size={size} />
            <span className="max-w-30 truncate">{activeEntity.name}</span>
          </>
        ) : (
          <span className="text-muted-foreground">
            Select {level.label}
          </span>
        )}
        <RiExpandUpDownLine
          className={cn(
            "text-muted-foreground/60 shrink-0",
            size === "sm" ? "h-3.5 w-3.5" : "h-4 w-4"
          )}
          aria-hidden="true"
        />
      </DropdownMenuTrigger>

      <DropdownMenuContent align="start" className="min-w-55 p-0">
        {/* Search input at the top */}
        <div className="p-2 border-b">
          <InputGroup>
            <InputGroupAddon>
              <RiSearchLine />
            </InputGroupAddon>
            <InputGroupInput
              placeholder={`Find ${level.label.toLowerCase()}...`}
              value={searchValue}
              onChange={(e) => setSearchValue(e.target.value)}
              size="sm"
              autoFocus
            />
          </InputGroup>
        </div>

        {/* Entity list */}
        <div className="p-1 max-h-60 overflow-y-auto">
          {filteredEntities.length > 0 ? (
            filteredEntities.map((entity, _index) => (
              <DropdownMenuItem
                key={entity.id}
                onClick={() => {
                  level.onEntityChange(entity.id);
                  setOpen(false);
                }}
                className="gap-2 py-2"
              >
                <EntityAvatar entity={entity} size="sm" />
                <span className="flex-1 truncate">{entity.name}</span>
                {entity.id === level.activeEntityId && (
                  <RiCheckLine className="h-4 w-4 text-primary" aria-hidden="true" />
                )}
              </DropdownMenuItem>
            ))
          ) : (
            <div className="px-2 py-4 text-center text-sm text-muted-foreground">
              No {level.labelPlural.toLowerCase()} found
            </div>
          )}
        </div>

        {/* "All <entities>" link in the middle */}
        {level.viewAllHref && (
          <>
            <DropdownMenuSeparator className="my-0" />
            <div className="p-1">
              <DropdownMenuItem asChild className="gap-2 py-2">
                <Link href={level.viewAllHref as Route}>
                  <span className="flex-1">All {level.labelPlural}</span>
                  <RiArrowRightLine className="h-4 w-4 text-muted-foreground" aria-hidden="true" />
                </Link>
              </DropdownMenuItem>
            </div>
          </>
        )}

        {/* "New <entity>" at the bottom */}
        {level.onCreateNew && (
          <>
            <DropdownMenuSeparator className="my-0" />
            <div className="p-1">
              <DropdownMenuItem
                onClick={() => level.onCreateNew?.()}
                className="gap-2 py-2"
              >
                <RiAddLine className="h-4 w-4 opacity-60" aria-hidden="true" />
                <span>
                  {level.createLabel ?? `New ${level.label.toLowerCase()}`}
                </span>
              </DropdownMenuItem>
            </div>
          </>
        )}
      </DropdownMenuContent>
    </DropdownMenu>
  );
}
