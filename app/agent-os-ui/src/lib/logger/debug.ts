export interface DebugFlagOptions {
	readonly storageKey?: string;
	readonly defaultEnabledInDev?: boolean;
}

export function isDebugEnabled(options: DebugFlagOptions = {}): boolean {
	if (typeof window === 'undefined') return false;

	const storageKey = options.storageKey ?? 'CONSTRUCTIVE_DEBUG_CONFIG';
	const defaultEnabledInDev = options.defaultEnabledInDev ?? true;

	try {
		const stored = localStorage.getItem(storageKey);
		if (stored === 'true') return true;
		if (stored === 'false') return false;
		return defaultEnabledInDev ? process.env.NODE_ENV === 'development' : false;
	} catch {
		return defaultEnabledInDev ? process.env.NODE_ENV === 'development' : false;
	}
}
