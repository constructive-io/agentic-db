import { cn } from '@/lib/utils';
import { CardFooter } from '@/components/ui/card';

interface AuthFooterProps {
	children: React.ReactNode;
	className?: string;
}

export function AuthFooter({ children, className }: AuthFooterProps) {
	return <CardFooter className={cn('flex flex-col space-y-2 px-6 pb-6', className)}>{children}</CardFooter>;
}
