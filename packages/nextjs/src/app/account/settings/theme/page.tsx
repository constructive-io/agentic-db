'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { ArrowLeft, Check, Monitor, Moon, Palette, Sun } from 'lucide-react';

import { cn } from '@/lib/utils';
import {
	Breadcrumb,
	BreadcrumbItem,
	BreadcrumbLink,
	BreadcrumbList,
	BreadcrumbPage,
	BreadcrumbSeparator,
} from '@/components/ui/breadcrumb';
import { Button } from '@/components/ui/button';

type Theme = 'light' | 'dark' | 'system';
type AccentColor = 'blue' | 'purple' | 'green' | 'orange' | 'pink';

const themeOptions: Array<{
	value: Theme;
	icon: React.ComponentType<{ className?: string }>;
	label: string;
	description: string;
}> = [
	{
		value: 'light',
		icon: Sun,
		label: 'Light',
		description: 'Bright and clear',
	},
	{
		value: 'dark',
		icon: Moon,
		label: 'Dark',
		description: 'Easy on the eyes',
	},
	{
		value: 'system',
		icon: Monitor,
		label: 'System',
		description: 'Match OS setting',
	},
];

const accentColors: Array<{
	value: AccentColor;
	color: string;
	name: string;
}> = [
	{ value: 'blue', color: 'bg-[oklch(0.688_0.1754_245.6151)]', name: 'Ocean' },
	{ value: 'purple', color: 'bg-[oklch(0.65_0.25_290)]', name: 'Violet' },
	{ value: 'green', color: 'bg-[oklch(0.65_0.20_155)]', name: 'Forest' },
	{ value: 'orange', color: 'bg-[oklch(0.70_0.20_65)]', name: 'Sunset' },
	{ value: 'pink', color: 'bg-[oklch(0.70_0.22_350)]', name: 'Blossom' },
];

export default function ThemeSettingsPage() {
	const router = useRouter();
	const [selectedTheme, setSelectedTheme] = useState<Theme>('system');
	const [selectedAccent, setSelectedAccent] = useState<AccentColor>('blue');
	const [fontSize, setFontSize] = useState(16);

	return (
		<div className='flex h-full flex-col'>
			{/* Header */}
			<header className='border-border/50 flex h-16 shrink-0 items-center gap-3 border-b px-6'>
				<Button
					variant='ghost'
					size='sm'
					onClick={() => router.back()}
					className='text-muted-foreground hover:text-foreground gap-2'
				>
					<ArrowLeft className='h-4 w-4' />
					Back
				</Button>
				<div className='ml-2 flex flex-1 items-center gap-3'>
					<div className='bg-muted flex h-8 w-8 items-center justify-center rounded-lg'>
						<Palette className='text-muted-foreground h-4 w-4' />
					</div>
					<Breadcrumb>
						<BreadcrumbList>
							<BreadcrumbItem>
								<BreadcrumbLink href='/account/settings' className='text-muted-foreground hover:text-foreground'>
									Settings
								</BreadcrumbLink>
							</BreadcrumbItem>
							<BreadcrumbSeparator />
							<BreadcrumbItem>
								<BreadcrumbPage className='font-medium'>Theme</BreadcrumbPage>
							</BreadcrumbItem>
						</BreadcrumbList>
					</Breadcrumb>
				</div>
			</header>

			{/* Main content */}
			<main className='flex-1 overflow-y-auto'>
				<div className='mx-auto max-w-3xl space-y-10 px-6 py-8'>
					{/* Appearance Mode */}
					<section className='animate-in fade-in-0 slide-in-from-bottom-4 duration-500'>
						<div className='mb-5'>
							<h2 className='text-lg font-semibold tracking-tight'>Appearance Mode</h2>
							<p className='text-muted-foreground mt-1 text-sm'>Choose how the interface looks and feels</p>
						</div>

						<div className='grid gap-4 sm:grid-cols-3'>
							{themeOptions.map(({ value, icon: Icon, label, description }) => (
								<button
									key={value}
									onClick={() => setSelectedTheme(value)}
									className={cn(
										'group relative flex flex-col overflow-hidden rounded-xl border p-5 transition-all duration-300',
										'hover:-translate-y-1 hover:shadow-lg',
										selectedTheme === value
											? 'border-primary/50 bg-primary/5 shadow-primary/10 shadow-md'
										: 'border-border/50 bg-card hover:border-border/60 hover:bg-accent/50',
									)}
								>
									{/* Selection indicator */}
									{selectedTheme === value && (
										<div
											className='animate-in zoom-in-50 bg-primary shadow-primary/30 absolute top-3 right-3 flex h-5 w-5
												items-center justify-center rounded-full shadow-lg'
										>
											<Check className='text-primary-foreground h-3 w-3' />
										</div>
									)}

									{/* Theme preview */}
									<div
										className={cn(
											'mb-4 flex h-16 w-full items-center justify-center rounded-lg transition-transform duration-300',
											'bg-muted group-hover:scale-[1.02]',
											selectedTheme === value && 'bg-primary/10',
										)}
									>
										<Icon
											className={cn('h-7 w-7', selectedTheme === value ? 'text-primary' : 'text-muted-foreground')}
										/>
									</div>

									<div className='text-left'>
										<p className='font-semibold tracking-tight'>{label}</p>
										<p className='text-muted-foreground mt-0.5 text-xs'>{description}</p>
									</div>
								</button>
							))}
						</div>
					</section>

					{/* Accent Color */}
					<section
						className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
						style={{ animationDelay: '100ms' }}
					>
						<div className='mb-5'>
							<h2 className='text-lg font-semibold tracking-tight'>Accent Color</h2>
							<p className='text-muted-foreground mt-1 text-sm'>Choose your primary color theme</p>
						</div>

						<div className='flex flex-wrap gap-3'>
							{accentColors.map(({ value, color, name }) => (
								<button
									key={value}
									onClick={() => setSelectedAccent(value)}
									className={cn(
										'group flex flex-col items-center gap-2.5 rounded-xl border p-4 transition-all duration-300',
										'hover:-translate-y-1 hover:shadow-md',
										selectedAccent === value
										? 'border-border/60 bg-card shadow-sm'
											: 'border-border/30 bg-card hover:border-border/50',
									)}
								>
									<div className='relative'>
										<div
											className={cn(
												'h-10 w-10 rounded-full shadow-lg transition-all duration-300',
												color,
												selectedAccent === value && 'ring-border scale-110 ring-4',
											)}
										/>
										{selectedAccent === value && (
											<div className='animate-in zoom-in-50 absolute inset-0 flex items-center justify-center'>
												<Check className='h-5 w-5 text-white drop-shadow-md' />
											</div>
										)}
									</div>
									<span
										className={cn(
											'text-xs font-medium transition-colors',
											selectedAccent === value ? 'text-foreground' : 'text-muted-foreground',
										)}
									>
										{name}
									</span>
								</button>
							))}
						</div>
					</section>

					{/* Font Size */}
					<section
						className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
						style={{ animationDelay: '200ms' }}
					>
						<div className='mb-5'>
							<h2 className='text-lg font-semibold tracking-tight'>Font Size</h2>
							<p className='text-muted-foreground mt-1 text-sm'>Adjust text size for better readability</p>
						</div>

						<div className='border-border/50 bg-card rounded-xl border p-6'>
							<div className='space-y-6'>
								{/* Slider with custom styling */}
								<div className='space-y-4'>
									<div className='relative'>
										<input
											type='range'
											min='12'
											max='20'
											value={fontSize}
											onChange={(e) => setFontSize(Number(e.target.value))}
											className='bg-muted [&::-webkit-slider-thumb]:bg-primary
												[&::-webkit-slider-thumb]:shadow-primary/30 h-2 w-full cursor-pointer appearance-none
												rounded-full transition-all outline-none [&::-webkit-slider-thumb]:h-5
												[&::-webkit-slider-thumb]:w-5 [&::-webkit-slider-thumb]:appearance-none
												[&::-webkit-slider-thumb]:rounded-full [&::-webkit-slider-thumb]:shadow-lg
												[&::-webkit-slider-thumb]:transition-transform [&::-webkit-slider-thumb]:duration-150
												[&::-webkit-slider-thumb]:hover:scale-110'
										/>
									</div>

									<div className='flex items-center justify-between'>
										<span className='text-muted-foreground text-xs font-medium'>Small</span>
										<span className='bg-primary/10 text-primary rounded-full px-3 py-1 text-sm font-semibold'>
											{fontSize}px
										</span>
										<span className='text-muted-foreground text-xs font-medium'>Large</span>
									</div>
								</div>

								{/* Preview */}
								<div className='border-border/40 bg-muted/30 rounded-lg border p-5'>
									<p className='text-muted-foreground/60 mb-2 text-[10px] font-semibold tracking-widest uppercase'>
										Preview
									</p>
									<p style={{ fontSize: `${fontSize}px` }} className='text-foreground leading-relaxed'>
										The quick brown fox jumps over the lazy dog. This is how your text will appear throughout the
										application.
									</p>
								</div>
							</div>
						</div>
					</section>

					{/* Actions */}
					<div
						className='border-border/50 animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards flex justify-end
							gap-3 border-t pt-6 duration-500'
						style={{ animationDelay: '300ms' }}
					>
						<Button variant='outline' onClick={() => router.back()} className='transition-all hover:-translate-y-0.5'>
							Cancel
						</Button>
						<Button className='shadow-primary/20 gap-2 shadow-lg transition-all hover:-translate-y-0.5'>
							<Check className='h-4 w-4' />
							Save Changes
						</Button>
					</div>
				</div>
			</main>
		</div>
	);
}
