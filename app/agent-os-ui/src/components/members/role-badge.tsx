import { Crown, Shield, User } from 'lucide-react';

import { cn } from '@/lib/utils';
import { Badge } from '@/components/ui/badge';

export type Role = 'owner' | 'admin' | 'member';
export type RoleBadgeSize = 'sm' | 'md' | 'lg';

interface RoleBadgeProps {
	role: Role;
	size?: RoleBadgeSize;
	showIcon?: boolean;
	className?: string;
}

const roleConfig: Record<Role, { icon: typeof Crown; label: string }> = {
	owner: { icon: Crown, label: 'Owner' },
	admin: { icon: Shield, label: 'Admin' },
	member: { icon: User, label: 'Member' },
};

const sizeStyles: Record<RoleBadgeSize, { badge: string; icon: string; text: string }> = {
	sm: { badge: 'px-1.5 py-0 gap-0.5', icon: 'size-2.5', text: 'text-[10px]' },
	md: { badge: 'px-2 py-0.5 gap-1', icon: 'size-3', text: 'text-xs' },
	lg: { badge: 'px-3 py-1 gap-1.5', icon: 'size-3.5', text: 'text-sm' },
};

const roleStyles: Record<Role, string> = {
	owner: 'bg-amber-500/10 text-amber-600 dark:bg-amber-400/10 dark:text-amber-400',
	admin: 'bg-blue-500/10 text-blue-600 dark:bg-blue-400/10 dark:text-blue-400',
	member: 'bg-muted/50 text-muted-foreground',
};

export function RoleBadge({ role, size = 'md', showIcon = true, className }: RoleBadgeProps) {
	const config = roleConfig[role];
	const sizeStyle = sizeStyles[size];
	const roleStyle = roleStyles[role];
	const Icon = config.icon;

	return (
		<Badge
			variant='outline'
			className={cn('rounded-full border-none font-medium', sizeStyle.badge, sizeStyle.text, roleStyle, className)}
		>
			{showIcon && <Icon className={sizeStyle.icon} />}
			{config.label}
		</Badge>
	);
}

export function getRoleFromFlags(isOwner: boolean, isAdmin: boolean): Role {
	if (isOwner) return 'owner';
	if (isAdmin) return 'admin';
	return 'member';
}
