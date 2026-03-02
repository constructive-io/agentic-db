'use client';

import * as React from 'react';

/**
 * Merges refs into a single callback ref.
 * React 19 compatible - handles refs as regular props.
 */
function composeRefs<T>(...refs: (React.Ref<T> | undefined)[]): React.RefCallback<T> {
	return (node) => {
		refs.forEach((ref) => {
			if (typeof ref === 'function') {
				ref(node);
			} else if (ref != null) {
				(ref as React.MutableRefObject<T | null>).current = node;
			}
		});
	};
}

/**
 * Merges props, handling special cases for className, style, and event handlers.
 * Excludes 'ref' from merging as it's handled separately.
 */
function mergeProps(
	slotProps: Record<string, unknown>,
	childProps: Record<string, unknown>,
): Record<string, unknown> {
	const overrideProps: Record<string, unknown> = { ...childProps };

	for (const propName in childProps) {
		// Skip ref - handled separately for composition
		if (propName === 'ref') continue;

		const slotPropValue = slotProps[propName];
		const childPropValue = childProps[propName];

		// Compose event handlers
		if (/^on[A-Z]/.test(propName) && typeof slotPropValue === 'function' && typeof childPropValue === 'function') {
			overrideProps[propName] = (...args: unknown[]) => {
				childPropValue(...args);
				slotPropValue(...args);
			};
		}
		// Merge className
		else if (propName === 'className' && typeof slotPropValue === 'string' && typeof childPropValue === 'string') {
			overrideProps[propName] = `${slotPropValue} ${childPropValue}`.trim();
		}
		// Merge style
		else if (propName === 'style' && typeof slotPropValue === 'object' && typeof childPropValue === 'object') {
			overrideProps[propName] = { ...slotPropValue, ...childPropValue };
		}
	}

	return { ...slotProps, ...overrideProps };
}

/**
 * Merges props from a parent component with a child element's props,
 * including proper ref composition. Use this in render prop patterns
 * where the parent needs to merge its props with the child's.
 *
 * @param parentProps - Props from the parent component (e.g., triggerProps from Base UI)
 * @param childElement - The child React element whose props will be merged
 * @returns Merged props object ready to pass to React.cloneElement
 */
function mergePropsWithRef<T = HTMLElement>(
	parentProps: Record<string, unknown>,
	childElement: React.ReactElement,
): Record<string, unknown> {
	const childProps = childElement.props as Record<string, unknown>;
	const parentRef = parentProps.ref as React.Ref<T> | undefined;
	const childRef = childProps.ref as React.Ref<T> | undefined;

	const mergedProps = mergeProps(parentProps, childProps);

	// Compose refs if either exists
	if (parentRef || childRef) {
		mergedProps.ref = composeRefs(parentRef, childRef);
	}

	return mergedProps;
}

/**
 * Check if a value is a valid slottable child (single React element).
 */
function isSlottable(child: React.ReactNode): child is React.ReactElement {
	return React.isValidElement(child);
}

export interface SlotProps extends React.HTMLAttributes<HTMLElement> {
	children?: React.ReactNode;
}

/**
 * Slot component - renders its child element with merged props.
 * Used for the `asChild` pattern where parent props are passed to child.
 * React 19 compatible - accesses ref from props instead of element.ref.
 */
const Slot = React.forwardRef<HTMLElement, SlotProps>((props, forwardedRef) => {
	const { children, ...slotProps } = props;

	// Handle single child
	if (isSlottable(children)) {
		const childProps = children.props as Record<string, unknown>;
		// React 19: ref is now a regular prop, not element.ref
		const childRef = childProps.ref as React.Ref<HTMLElement> | undefined;

		return React.cloneElement(children, {
			...mergeProps(slotProps, childProps),
			ref: forwardedRef ? composeRefs(forwardedRef, childRef) : childRef,
		} as React.Attributes);
	}

	// Handle multiple children - wrap Slottable content
	if (React.Children.count(children) > 1) {
		const childrenArray = React.Children.toArray(children);
		const slottableChild = childrenArray.find(
			(child) => React.isValidElement(child) && child.type === Slottable,
		) as React.ReactElement<{ children: React.ReactNode }> | undefined;

		if (slottableChild) {
			const newElement = slottableChild.props.children;
			if (isSlottable(newElement)) {
				const newElementProps = newElement.props as Record<string, unknown> & { children?: React.ReactNode };
				const newChildren = childrenArray.map((child) => {
					if (child === slottableChild) {
						return React.Children.count(newElementProps.children) > 1
							? React.Children.only(null)
							: newElementProps.children;
					}
					return child;
				});

				// React 19: ref is now a regular prop
				const childRef = newElementProps.ref as React.Ref<HTMLElement> | undefined;

				return React.cloneElement(newElement, {
					...mergeProps(slotProps, newElementProps),
					ref: forwardedRef ? composeRefs(forwardedRef, childRef) : childRef,
					children: newChildren,
				} as React.Attributes);
			}
		}
	}

	// Fallback: render children as-is (shouldn't normally happen with proper usage)
	return <>{children}</>;
});

Slot.displayName = 'Slot';

/**
 * Slottable component - marks content that should receive slot props.
 * Used when Slot has multiple children and you want to specify which one receives props.
 */
function Slottable({ children }: { children: React.ReactNode }) {
	return <>{children}</>;
}

export { Slot, Slottable, composeRefs, mergeProps, mergePropsWithRef };
