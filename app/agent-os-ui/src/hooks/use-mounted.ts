import { useEffect, useState } from 'react';

/**
 * Hook to determine if the component has mounted on the client.
 * Useful for avoiding hydration mismatches with components that use
 * auto-generated IDs (like Radix UI's useId).
 */
export function useMounted() {
	const [mounted, setMounted] = useState(false);

	useEffect(() => {
		setMounted(true);
	}, []);

	return mounted;
}
