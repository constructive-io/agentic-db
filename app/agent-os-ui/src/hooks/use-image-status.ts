import { useEffect, useState } from 'react';

export type ImageStatus = 'idle' | 'loading' | 'loaded' | 'error';

export function useImageStatus(src?: string): ImageStatus {
	const [status, setStatus] = useState<ImageStatus>('idle');

	useEffect(() => {
		if (!src) return setStatus('idle');

		setStatus('loading');
		const img = new Image();
		img.src = src;

		const onLoad = () => setStatus('loaded');
		const onError = () => setStatus('error');

		img.addEventListener('load', onLoad);
		img.addEventListener('error', onError);

		return () => {
			img.removeEventListener('load', onLoad);
			img.removeEventListener('error', onError);
		};
	}, [src]);

	return status;
}
