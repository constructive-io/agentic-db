import { useRouter } from 'next/navigation';
import { Avatar, AvatarFallback } from '@/components/ui/avatar';
import { Button } from '@/components/ui/button';
import {
	DropdownMenu,
	DropdownMenuContent,
	DropdownMenuGroup,
	DropdownMenuItem,
	DropdownMenuLabel,
	DropdownMenuSeparator,
	DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu';
import { RiLogoutBoxLine, RiSettingsLine } from '@remixicon/react';

import { useLogout } from '@/lib/gql/hooks/auth';
import { useAccountEmail } from '@/lib/gql/hooks/schema-builder/account/use-account-email';
import { useCurrentUser } from '@/lib/gql/hooks/schema-builder/app';
import { useSchemaBuilderAuth } from '@/store/app-store';

function getAvatarFallback(text: string | null | undefined): string {
	const trimmed = (text ?? '').trim();
	if (!trimmed) return 'U';
	return trimmed[0]?.toUpperCase() ?? 'U';
}

function toUserHandle(username: string | null | undefined): string | null {
	const trimmed = (username ?? '').trim();
	if (!trimmed) return null;
	return trimmed.startsWith('@') ? trimmed : `@${trimmed}`;
}

export function UserDropdown() {
	const router = useRouter();
	const logoutMutation = useLogout();
	const { isAuthenticated, user: authUser } = useSchemaBuilderAuth();
	const { user: currentUser } = useCurrentUser({ enabled: isAuthenticated });

	const inferredUsername = authUser?.email?.split('@')[0] || null;

	const handle = toUserHandle(currentUser?.displayName || currentUser?.username || inferredUsername || null);
	const { email } = useAccountEmail({ userId: currentUser?.id ?? '', enabled: isAuthenticated });
	const avatarFallback = getAvatarFallback(currentUser?.displayName || inferredUsername || authUser?.email);

	const handleLogout = () => {
		logoutMutation.mutate();
	};

	const handleAccountSettings = () => {
		router.push('/account/settings');
	};

	return (
		<DropdownMenu>
			<DropdownMenuTrigger asChild>
				<Button variant='ghost' className='h-auto p-0 hover:bg-transparent'>
					<Avatar className='size-8'>
						{/* <AvatarImage src='https://via.placeholder.com/32x32' width={32} height={32} alt='Profile image' /> */}
						<AvatarFallback>{avatarFallback}</AvatarFallback>
					</Avatar>
				</Button>
			</DropdownMenuTrigger>
			<DropdownMenuContent className='w-52' align='end'>
				<DropdownMenuGroup>
					<DropdownMenuLabel className='flex min-w-0 flex-col space-y-1'>
						<span className='text-foreground truncate text-sm font-medium'>Account</span>
						{(handle || email) && (
							<span className='text-muted-foreground truncate text-xs font-medium'>{handle || email}</span>
						)}
					</DropdownMenuLabel>
				</DropdownMenuGroup>
				<DropdownMenuSeparator />
				<DropdownMenuGroup>
					<DropdownMenuItem onClick={handleAccountSettings}>
						<RiSettingsLine size={16} className='opacity-60' aria-hidden='true' />
						<span>Account settings</span>
					</DropdownMenuItem>
				</DropdownMenuGroup>
				<DropdownMenuSeparator />
				<DropdownMenuItem onClick={handleLogout} disabled={logoutMutation.isPending}>
					<RiLogoutBoxLine size={16} className='opacity-60' aria-hidden='true' />
					<span>Log out</span>
				</DropdownMenuItem>
			</DropdownMenuContent>
		</DropdownMenu>
	);
}
