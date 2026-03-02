/**
 * Account routes layout (/account/settings)
 *
 * These routes are at the root/app level for managing user's personal settings.
 * URL is the source of truth - no entity IDs in URL means root-level navigation.
 *
 * No special logic needed here since useEntityParams reads from URL,
 * and these routes don't have entity params in their path.
 */
export default function AccountLayout({ children }: { children: React.ReactNode }) {
	return <>{children}</>;
}
