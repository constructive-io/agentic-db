'use client';

import { AnimatePresence, motion } from 'motion/react';

import { useAuthContext } from '@/lib/auth/auth-context';
import { easings, transitions, variants } from '@/lib/motion/motion-config';

import { AuthEmbedded } from './auth-embedded';

function AuthLoadingSpinner() {
	return (
		<motion.div
			className='bg-background/80 fixed inset-0 z-50 flex items-center justify-center backdrop-blur-sm'
			{...variants.fade}
			transition={transitions.fade}
		>
			<motion.div
				className='flex flex-col items-center gap-4'
				{...variants.fadeSlideUp}
				transition={transitions.enterExit}
			>
				<div className='relative'>
					<motion.div
						className='border-primary/20 h-12 w-12 rounded-full border-3'
						initial={{ scale: 1 }}
						animate={{ scale: [1, 1.05, 1] }}
						transition={{ duration: 1.2, repeat: Infinity, ease: easings.easeInOut }}
					/>
					<motion.div
						className='border-t-primary absolute inset-0 h-12 w-12 rounded-full border-3 border-transparent'
						animate={{ rotate: 360 }}
						transition={{ duration: 0.8, repeat: Infinity, ease: 'linear' }}
					/>
				</div>
				<motion.p
					className='text-muted-foreground text-sm font-medium'
					initial={{ opacity: 0.7 }}
					animate={{ opacity: [0.7, 1, 0.7] }}
					transition={{ duration: 1.2, repeat: Infinity, ease: easings.easeInOut }}
				>
					Verifying authentication...
				</motion.p>
			</motion.div>
		</motion.div>
	);
}

export function AuthGate({ children }: { children: React.ReactNode }) {
	const { isAuthenticated, isLoading } = useAuthContext();

	return (
		<AnimatePresence mode='wait'>
			{isLoading ? (
				<AuthLoadingSpinner key='loading' />
			) : !isAuthenticated ? (
				<motion.div
					key='auth'
					{...variants.fadeSlideUp}
					transition={transitions.enterExit}
					className='relative flex h-full w-full flex-1 flex-col'
				>
					<AuthEmbedded />
				</motion.div>
			) : (
				<motion.div
					key='authenticated'
					{...variants.fadeSlideUp}
					transition={transitions.enterExit}
					className='flex h-full min-h-0 flex-1 flex-col'
				>
					{children}
				</motion.div>
			)}
		</AnimatePresence>
	);
}
