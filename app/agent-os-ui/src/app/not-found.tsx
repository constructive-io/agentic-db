import Link from 'next/link';
import { ArrowLeft } from 'lucide-react';

import { BrandLogo } from '@/components/brand-logo';
import { Button } from '@/components/ui/button';

export default function NotFound() {
	return (
		<div className='bg-background relative flex min-h-dvh items-center justify-center overflow-hidden px-6'>
			{/* Background watermark */}
			<div className='pointer-events-none absolute inset-0 flex items-center justify-center'>
				<BrandLogo
					variant='watermark'
					className='animate-in fade-in-0 zoom-in-50 h-[600px] w-auto fill-mode-backwards opacity-[0.03] duration-1000'
				/>
			</div>

			{/* Content */}
			<div className='relative z-10 flex flex-col items-center text-center'>
				{/* 404 hero text */}
				<div className='animate-in fade-in-0 slide-in-from-bottom-6 mb-6 fill-mode-backwards duration-700'>
					<span className='text-foreground/5 select-none text-[10rem] font-bold leading-none tracking-tighter sm:text-[14rem]'>
						404
					</span>
				</div>

				{/* Text content */}
				<div
					className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
					style={{ animationDelay: '100ms' }}
				>
					<h1 className='text-foreground text-2xl font-semibold tracking-tight sm:text-3xl'>Page not found</h1>
					<p className='text-muted-foreground mx-auto mt-3 max-w-sm text-sm leading-relaxed sm:text-base'>
						The page you&apos;re looking for doesn&apos;t exist or may have been moved.
					</p>
				</div>

				{/* Action */}
				<div
					className='animate-in fade-in-0 slide-in-from-bottom-2 fill-mode-backwards mt-8 duration-500'
					style={{ animationDelay: '200ms' }}
				>
					<Button asChild variant='outline' className='group gap-2'>
						<Link href='/'>
							<ArrowLeft className='h-4 w-4 transition-transform group-hover:-translate-x-0.5' />
							Back to Home
						</Link>
					</Button>
				</div>
			</div>
		</div>
	);
}
