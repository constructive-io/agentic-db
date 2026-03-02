'use client';

import { useEffect, useRef, useState } from 'react';

interface UseInViewOptions {
	threshold?: number | number[];
	rootMargin?: string;
	triggerOnce?: boolean;
}

export function useInView(options: UseInViewOptions = {}) {
	const { threshold = 0.1, rootMargin = '0px', triggerOnce = false } = options;

	const [isInView, setIsInView] = useState(false);
	const [hasBeenInView, setHasBeenInView] = useState(false);
	const ref = useRef<HTMLElement>(null);

	useEffect(() => {
		const element = ref.current;
		if (!element) return;

		const observer = new IntersectionObserver(
			([entry]) => {
				const inView = entry.isIntersecting;
				setIsInView(inView);

				if (inView && !hasBeenInView) {
					setHasBeenInView(true);
				}
			},
			{
				threshold,
				rootMargin,
			},
		);

		observer.observe(element);

		return () => {
			observer.unobserve(element);
		};
	}, [threshold, rootMargin, hasBeenInView]);

	// If triggerOnce is true, return hasBeenInView instead of isInView
	return {
		ref,
		isInView: triggerOnce ? hasBeenInView : isInView,
	};
}
