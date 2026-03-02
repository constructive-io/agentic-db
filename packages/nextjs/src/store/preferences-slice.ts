/**
 * Preferences slice — app-level UI preferences that persist across sessions.
 *
 * No external dependencies on state-management libraries.
 * State is held by the vanilla AppStore defined in app-store.ts.
 */

export interface SidebarSectionsExpanded {
	app: boolean;
	system: boolean;
}

const DEFAULT_SIDEBAR_SECTIONS: SidebarSectionsExpanded = {
	app: true,
	system: false,
};

export interface PreferencesState {
	sidebarSectionsExpanded: SidebarSectionsExpanded;
	sidebarPinned: boolean;
}

export const initialPreferencesState: PreferencesState = {
	sidebarSectionsExpanded: DEFAULT_SIDEBAR_SECTIONS,
	sidebarPinned: false,
};

// ── Serialization ──────────────────────────────────────────────────────

export function serializePreferences(state: PreferencesState) {
	return {
		sidebarSectionsExpanded: state.sidebarSectionsExpanded,
		sidebarPinned: state.sidebarPinned,
	};
}

export function deserializePreferences(raw: unknown): PreferencesState {
	const prefs = raw as Partial<PreferencesState> | undefined;
	if (!prefs) return initialPreferencesState;
	return {
		sidebarSectionsExpanded: prefs.sidebarSectionsExpanded ?? DEFAULT_SIDEBAR_SECTIONS,
		sidebarPinned: prefs.sidebarPinned ?? false,
	};
}
