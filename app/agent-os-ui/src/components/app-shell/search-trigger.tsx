"use client";

import * as React from "react";
import { cn } from "@/lib/utils";
import { RiSearchLine } from "@remixicon/react";

interface SearchTriggerProps {
  placeholder?: string;
  shortcut?: string;
  onOpen?: () => void;
  className?: string;
}

export function SearchTrigger({
  placeholder = "Search...",
  shortcut = "⌘K",
  onOpen,
  className,
}: SearchTriggerProps) {
  // Handle keyboard shortcut
  React.useEffect(() => {
    const handleKeyDown = (event: KeyboardEvent) => {
      if ((event.metaKey || event.ctrlKey) && event.key === "k") {
        event.preventDefault();
        onOpen?.();
      }
    };

    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [onOpen]);

  return (
    <button
      type="button"
      onClick={onOpen}
      className={cn(
        "flex items-center gap-2 rounded-lg border bg-background/50 px-3 py-1.5",
        "text-sm text-muted-foreground",
        "transition-all duration-200",
        "hover:bg-accent hover:text-foreground",
        "focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring",
        className
      )}
    >
      <RiSearchLine className="h-4 w-4" aria-hidden="true" />
      <span className="hidden sm:inline">{placeholder}</span>
      {shortcut && (
        <kbd
          className={cn(
            "pointer-events-none hidden h-5 select-none items-center gap-1 rounded border",
            "bg-muted px-1.5 font-mono text-[10px] font-medium text-muted-foreground",
            "sm:flex"
          )}
        >
          {shortcut}
        </kbd>
      )}
    </button>
  );
}
