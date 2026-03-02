import Link from 'next/link';

import { ROUTE_PATHS } from '@/app-routes';

export function Header() {
	return (
		<header
			className='border-border/40 bg-background/95 supports-[backdrop-filter]:bg-background/60 sticky top-0 z-50 w-full
				border-b backdrop-blur'
		>
			<div className='container mx-auto flex h-14 max-w-screen-2xl items-center justify-between px-4 md:px-6'>
				<div className='flex items-center'>
					<Link className='mr-6 flex items-center space-x-2' href={ROUTE_PATHS.ROOT}>
						<span className='text-lg font-bold'>Constructive</span>
					</Link>
					<nav className='hidden items-center gap-6 text-sm md:flex'>
						<Link
							className='hover:text-foreground text-foreground/80 font-medium transition-colors'
							href={ROUTE_PATHS.ORGANIZATIONS}
						>
							Organizations
						</Link>
					</nav>
				</div>
			</div>
		</header>
	);
}
