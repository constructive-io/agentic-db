import { useEffect, useRef } from 'react';

/**
 * Hook to manage display value during editing
 *
 * Preserves the original display value while editing is active,
 * preventing flickering when the actual value changes during input.
 *
 * @param value - The current value
 * @param isEditing - Whether the cell is currently being edited
 * @returns Object with valueToDisplay and originalValue
 */
export function useEditValue<T>(value: T, isEditing?: boolean) {
	const originalValueRef = useRef<T>(value);

	// Store original value when editing starts
	useEffect(() => {
		if (!isEditing) {
			originalValueRef.current = value;
		}
	}, [isEditing, value]);

	// Always display the original value during editing, current value otherwise
	const valueToDisplay = isEditing ? originalValueRef.current : value;

	return {
		/**
		 * The value that should be displayed in the cell
		 * - During editing: shows the original value (stable)
		 * - When not editing: shows the current value
		 */
		valueToDisplay,

		/**
		 * The original value when editing started
		 * - Use this as the initial value for the editor
		 */
		originalValue: originalValueRef.current,
	};
}
