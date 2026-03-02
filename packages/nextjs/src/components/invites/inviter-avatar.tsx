'use client';

import { Avatar, AvatarFallback } from '@/components/ui/avatar';

function getInitials(input: string | null | undefined): string {
	if (!input) return '--';
	const parts = input.trim().split(/\s+/).filter(Boolean);
	if (parts.length === 0) return '--';
	if (parts.length === 1) return parts[0].slice(0, 2).toUpperCase();
	return (parts[0][0] + parts[1][0]).toUpperCase();
}

interface InviterInfo {
	id: string;
	displayName: string | null;
	username: string | null;
}

interface InviterAvatarProps {
	inviter: InviterInfo | null;
}

export function InviterAvatar({ inviter }: InviterAvatarProps) {
	if (!inviter) return <span className='text-muted-foreground text-sm'>—</span>;

	return (
		<div className='flex max-w-[200px] items-center gap-2'>
			<Avatar className='size-6 shrink-0'>
				<AvatarFallback className='bg-zinc-400 text-[10px] text-white'>
					{getInitials(inviter.displayName || inviter.username)}
				</AvatarFallback>
			</Avatar>
			<span className='text-muted-foreground truncate text-sm'>
				{inviter.displayName || inviter.username || inviter.id}
			</span>
		</div>
	);
}
