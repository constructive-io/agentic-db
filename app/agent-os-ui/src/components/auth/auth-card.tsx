import { cn } from '@/lib/utils';
import { Card, CardContent, CardHeader } from '@/components/ui/card';

import { AuthFooter } from './auth-footer';
import { AuthHeader } from './auth-header';

interface AuthCardProps {
	title: string;
	description?: string;
	children: React.ReactNode;
	footer?: React.ReactNode;
	className?: string;
	showLogo?: boolean;
}

export function AuthCard({ title, description, children, footer, className, showLogo = true }: AuthCardProps) {
	return (
		<Card className={cn('w-full max-w-md', className)}>
			<CardHeader className='space-y-1'>
				<AuthHeader title={title} description={description} showLogo={showLogo} />
			</CardHeader>
			<CardContent className='space-y-4'>{children}</CardContent>
			{footer && <AuthFooter>{footer}</AuthFooter>}
		</Card>
	);
}
