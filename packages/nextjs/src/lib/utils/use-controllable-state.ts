import { useCallback, useRef, useState } from 'react';

type UseControllableStateParams<T> = {
	prop?: T;
	defaultProp?: T;
	onChange?: (value: T) => void;
};

/**
 * Hook for managing controlled/uncontrolled state.
 * Compatible replacement for @radix-ui/react-use-controllable-state.
 */
export function useControllableState<T>({
	prop,
	defaultProp,
	onChange,
}: UseControllableStateParams<T>): [T, (value: T) => void] {
	const [uncontrolledValue, setUncontrolledValue] = useState<T>(defaultProp as T);
	const isControlled = prop !== undefined;
	const value = isControlled ? prop : uncontrolledValue;

	// Store onChange in ref to keep callback stable
	const onChangeRef = useRef(onChange);
	onChangeRef.current = onChange;

	const setValue = useCallback(
		(newValue: T) => {
			if (!isControlled) {
				setUncontrolledValue(newValue);
			}
			onChangeRef.current?.(newValue);
		},
		[isControlled],
	);

	return [value, setValue];
}
