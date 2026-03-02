import { appStore } from '@/store/app-store';

export function initEnvOverridesSync() {
	if (typeof window === 'undefined') return;

	if ((window as any).__constructive_env_sync__) return;
	(window as any).__constructive_env_sync__ = true;

	window.addEventListener('storage', (e: StorageEvent) => {
		if (e.key !== 'constructive-endpoint:schema-builder') return;
		const value = e.newValue && e.newValue.trim().length ? e.newValue.trim() : null;
		appStore.setEndpointOverrideFromSync('schema-builder', value);
	});
}
