import type { Metadata } from 'next';
import { Suspense } from 'react';
import { Geist, Geist_Mono } from 'next/font/google';
import Script from 'next/script';

import './globals.css';

import { RouteGuard } from '@/lib/auth/route-guards';
import { SchemaContextClient } from '@/lib/schema-context';
import { Toaster } from '@/components/ui/sonner';
import { CardStackProvider } from '@/components/ui/stack';
import { AppPortalRoot } from '@/components/portal-root';
import { AppProvider } from '@/components/app-provider';
import { ThemeProvider } from '@/components/theme-provider';
import { AuthenticatedShell } from '@/components/layouts/authenticated-shell';
import { ClientOnlyStackViewport } from '@/components/client-only-stack-viewport';
import { ShellFrameSkeleton } from '@/components/skeletons';

const geistSans = Geist({
	variable: '--font-geist-sans',
	subsets: ['latin'],
});

const geistMono = Geist_Mono({
	variable: '--font-geist-mono',
	subsets: ['latin'],
});

export const metadata: Metadata = {
	title: 'Constructive',
	description: 'Constructive - Your gateway to web3 cloud',
};

export default function RootLayout({
	children,
}: Readonly<{
	children: React.ReactNode;
}>) {
	return (
		<html lang='en' suppressHydrationWarning className='h-full overscroll-none'>
			<body className={`${geistSans.variable} ${geistMono.variable} h-full antialiased`}>
				{/* Load runtime config before React hydration for Docker env injection */}
				<Script src='/__runtime-config.js' strategy='beforeInteractive' />
				<ThemeProvider attribute='class' defaultTheme='dark' enableSystem disableTransitionOnChange>
					{/* Suspense boundary required for useSearchParams (nuqs/Next.js) during static generation */}
					<Suspense fallback={<ShellFrameSkeleton />}>
						<AppProvider>
							<CardStackProvider layoutMode='side-by-side' defaultPeekOffset={48}>
								<SchemaContextClient />
								<RouteGuard>
									<AuthenticatedShell>{children}</AuthenticatedShell>
								</RouteGuard>
								<Toaster position="bottom-left" />
								<ClientOnlyStackViewport />
							</CardStackProvider>
						</AppProvider>
					</Suspense>
				</ThemeProvider>
				{/* Portal root for all overlay components (dialogs, popovers, tooltips, etc.) */}
		<AppPortalRoot />
			</body>
		</html>
	);
}
