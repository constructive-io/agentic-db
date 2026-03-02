'use client';

import { useEffect, useState } from 'react';
import { CardStackViewport } from '@/components/ui/stack';

/**
 * Client-only wrapper for CardStackViewport to prevent hydration mismatch.
 * The viewport uses createPortal which behaves differently on server vs client.
 */
export function ClientOnlyStackViewport() {
	const [mounted, setMounted] = useState(false);

	useEffect(() => {
		setMounted(true);
	}, []);

	if (!mounted) {
		return null;
	}

	return <CardStackViewport peekDepth={3} />;
}
