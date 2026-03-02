import { branding } from '@/config/branding';
import { cn } from '@/lib/utils';

export interface LegalLink {
	label: string;
	href: string;
}

const DEFAULT_LEGAL_LINKS: LegalLink[] = branding.legalLinks;

export interface AuthLegalFooterProps {
	companyName?: string;
	links?: LegalLink[];
	className?: string;
}

export function AuthLegalFooter({
	companyName = branding.companyName,
	links = DEFAULT_LEGAL_LINKS,
	className,
}: AuthLegalFooterProps) {
	return (
		<footer
			className={cn(
				'flex flex-col items-center justify-between gap-4 px-6 py-4 sm:flex-row',
				className,
			)}
		>
			<p className='text-muted-foreground text-sm'>
				© {companyName}. All rights reserved
			</p>
			<nav className='flex items-center gap-6'>
				{links.map((link) => (
					<a
						key={link.href}
						href={link.href}
						target='_blank'
						rel='noopener noreferrer'
						className='text-muted-foreground hover:text-foreground text-sm transition-colors'
					>
						{link.label}
					</a>
				))}
			</nav>
		</footer>
	);
}
