import { useCallback, useEffect, useState } from 'react';

export interface Bounds {
	left: number;
	top: number;
	width: number;
	height: number;
}

export function useMeasure<T extends Element = Element>(): [(node: T | null) => void, Bounds, () => void] {
	const [element, setElement] = useState<T | null>(null);
	const [bounds, setBounds] = useState<Bounds>({
		left: 0,
		top: 0,
		width: 0,
		height: 0,
	});

	const [observer, setObserver] = useState<ResizeObserver | null>(null);

	useEffect(() => {
		if (typeof window !== 'undefined' && 'ResizeObserver' in window) {
			const resizeObserver = new ResizeObserver((entries) => {
				if (entries[0]) {
					const { left, top, width, height } = entries[0].contentRect;
					setBounds({ left, top, width, height });
				}
			});
			setObserver(resizeObserver);

			return () => {
				resizeObserver.disconnect();
			};
		}
	}, []);

	useEffect(() => {
		if (!element || !observer) return;

		observer.observe(element);
		return () => observer.disconnect();
	}, [element, observer]);

	const ref = useCallback((node: T | null) => {
		setElement(node);
	}, []);

	const disconnect = useCallback(() => {
		if (observer) {
			observer.disconnect();
		}
	}, [observer]);

	return [ref, bounds, disconnect];
}
