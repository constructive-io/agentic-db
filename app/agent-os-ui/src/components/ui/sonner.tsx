'use client';

import { Toaster as Sonner, ToasterProps } from 'sonner';

type ToasterComponentProps = ToasterProps & {
	/** Theme for the toaster. Pass from your app's theme context. Defaults to 'system'. */
	theme?: 'light' | 'dark' | 'system';
};

const Toaster = ({ theme = 'system', ...props }: ToasterComponentProps) => {
	return (
		<Sonner
			theme={theme}
			className="toaster group"
			style={
				{
					'--normal-bg': 'var(--popover)',
					'--normal-text': 'var(--popover-foreground)',
					'--normal-border': 'var(--border)',
				} as React.CSSProperties
			}
			{...props}
		/>
	);
};

export { Toaster };
export type { ToasterComponentProps };
