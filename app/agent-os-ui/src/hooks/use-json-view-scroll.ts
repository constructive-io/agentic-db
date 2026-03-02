import { useCallback, useEffect, useRef, useState } from 'react';

interface UseJsonViewScrollOptions {
	onClose: () => void;
	scrollDelta?: number;
}

export function useJsonViewScroll({ onClose, scrollDelta = 100 }: UseJsonViewScrollOptions) {
	const [cursorInside, setCursorInside] = useState(false);
	const jsonViewRef = useRef<HTMLDivElement>(null);
	const scrollAccumulator = useRef(0);
	const lastScrollY = useRef(0);
	const isInitialized = useRef(false);

	// Track cursor position relative to JSON view
	const handleMouseMove = useCallback(
		(event: MouseEvent) => {
			if (!isInitialized.current) {
				setCursorInside(false);
				return;
			}

			// Get the JSON view element to calculate its position on screen
			if (!jsonViewRef.current) {
				setCursorInside(false);
				return;
			}

			const rect = jsonViewRef.current.getBoundingClientRect();
			const isInside =
				event.clientX >= rect.left &&
				event.clientX <= rect.right &&
				event.clientY >= rect.top &&
				event.clientY <= rect.bottom;

			setCursorInside(isInside);
		},
		[jsonViewRef],
	);

	// Handle wheel events for smart scrolling
	const handleWheel = useCallback(
		(event: WheelEvent) => {
			if (!isInitialized.current) return;

			// Check if the wheel event is happening inside the JSON view
			if (jsonViewRef.current) {
				const rect = jsonViewRef.current.getBoundingClientRect();
				const isWheelInsideView =
					event.clientX >= rect.left &&
					event.clientX <= rect.right &&
					event.clientY >= rect.top &&
					event.clientY <= rect.bottom;

				// Alternative check: see if the event target is within our JSON view
				const target = event.target as Element;
				const isTargetInside = jsonViewRef.current.contains(target);

				// Use either coordinate-based or target-based detection
				const isInsideView = isWheelInsideView || isTargetInside;

				// If wheel event is inside JSON view, don't interfere - let ScrollArea handle it
				if (isInsideView) {
					scrollAccumulator.current = 0; // Reset accumulator
					return; // Let the event bubble to ScrollArea naturally
				}
			}

			// If wheel event is outside JSON view, track for auto-close
			const scrollDirection = event.deltaY > 0 ? 1 : -1;

			// Only accumulate if scrolling in the same direction
			if (Math.sign(scrollAccumulator.current) !== scrollDirection && scrollAccumulator.current !== 0) {
				scrollAccumulator.current = 0;
			}

			scrollAccumulator.current += event.deltaY;

			// Close if scroll delta exceeded
			if (Math.abs(scrollAccumulator.current) >= scrollDelta) {
				onClose();
				scrollAccumulator.current = 0;
			}
		},
		[onClose, scrollDelta],
	);

	// Initialize when component mounts
	useEffect(() => {
		isInitialized.current = true;
		setCursorInside(false);
		scrollAccumulator.current = 0;
		lastScrollY.current = window.scrollY;

		// Set up event listeners
		document.addEventListener('mousemove', handleMouseMove, { passive: true });
		// Use passive wheel listener since we're not preventing default
		document.addEventListener('wheel', handleWheel, { passive: true });

		return () => {
			isInitialized.current = false;
			document.removeEventListener('mousemove', handleMouseMove);
			document.removeEventListener('wheel', handleWheel);
		};
	}, [handleMouseMove, handleWheel]);

	return {
		jsonViewRef,
		cursorInside,
	};
}
