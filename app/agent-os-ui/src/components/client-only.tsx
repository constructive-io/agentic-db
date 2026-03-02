'use client';

import { useEffect, useState, type ReactNode } from 'react';

interface ClientOnlyProps {
	children: ReactNode;
	fallback?: ReactNode;
}

/**
 * ClientOnly component prevents hydration mismatches by only rendering
 * children on the client-side after hydration is complete.
 *
 * This is particularly useful for components that use libraries like @dnd-kit
 * which generate dynamic IDs that can differ between server and client.
 */
export function ClientOnly({ children, fallback = null }: ClientOnlyProps) {
	const [hasMounted, setHasMounted] = useState(false);

	useEffect(() => {
		setHasMounted(true);
	}, []);

	if (!hasMounted) {
		return <>{fallback}</>;
	}

	return <>{children}</>;
}
