import { useEffect, useRef, useState } from 'react';

type ScrollDirection = 'up' | 'down' | 'left' | 'right' | null;

export function useScrollDirection(scrollRef: React.RefObject<HTMLElement | null>): ScrollDirection {
	const [scrollDirection, setScrollDirection] = useState<ScrollDirection>(null);
	const lastScrollTop = useRef(0);
	const lastScrollLeft = useRef(0);

	useEffect(() => {
		const element = scrollRef.current;
		if (!element) return;

		let ticking = false;

		const updateScrollDirection = () => {
			const scrollTop = element.scrollTop;
			const scrollLeft = element.scrollLeft;

			// Determine vertical direction
			if (scrollTop > lastScrollTop.current + 5) {
				setScrollDirection('down');
			} else if (scrollTop < lastScrollTop.current - 5) {
				setScrollDirection('up');
			}
			// Determine horizontal direction
			else if (scrollLeft > lastScrollLeft.current + 5) {
				setScrollDirection('right');
			} else if (scrollLeft < lastScrollLeft.current - 5) {
				setScrollDirection('left');
			}

			lastScrollTop.current = scrollTop;
			lastScrollLeft.current = scrollLeft;
			ticking = false;
		};

		const onScroll = () => {
			if (!ticking) {
				requestAnimationFrame(updateScrollDirection);
				ticking = true;
			}
		};

		element.addEventListener('scroll', onScroll, { passive: true });

		return () => {
			element.removeEventListener('scroll', onScroll);
		};
	}, [scrollRef]);

	return scrollDirection;
}
