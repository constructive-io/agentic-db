/**
 * Custom validation functions for authentication forms
 */

/**
 * Calculate password strength score (0-5)
 */
export function getPasswordStrength(password: string): number {
	let score = 0;

	// Length check
	if (password.length >= 8) score++;

	// Character variety checks
	if (/[a-z]/.test(password)) score++;
	if (/[A-Z]/.test(password)) score++;
	if (/\d/.test(password)) score++;
	if (/[@$!%*?&]/.test(password)) score++;

	return score;
}

/**
 * Get password strength label
 */
export function getPasswordStrengthLabel(score: number): string {
	const labels = ['Very Weak', 'Weak', 'Fair', 'Good', 'Strong'];
	return labels[score - 1] || 'Very Weak';
}

/**
 * Get password strength color class
 */
export function getPasswordStrengthColor(score: number): string {
	const colors = ['bg-red-500', 'bg-orange-500', 'bg-yellow-500', 'bg-blue-500', 'bg-green-500'];
	return colors[score - 1] || 'bg-red-500';
}

/**
 * Validate email format (additional validation beyond zod)
 */
export function validateEmail(email: string): boolean {
	const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	return emailRegex.test(email);
}

/**
 * Check if password meets minimum requirements
 */
export function isPasswordValid(password: string): boolean {
	return getPasswordStrength(password) >= 3;
}

/**
 * Async email availability check (placeholder - integrate with your API)
 */
export async function checkEmailAvailability(email: string): Promise<boolean> {
	// Placeholder implementation - replace with actual API call
	return new Promise((resolve) => {
		setTimeout(() => {
			// Simulate API call
			const unavailableEmails = ['admin@example.com', 'test@example.com'];
			resolve(!unavailableEmails.includes(email));
		}, 500);
	});
}

/**
 * Validate password confirmation
 */
export function validatePasswordConfirmation(password: string, confirmPassword: string): boolean {
	return password === confirmPassword && password.length > 0;
}
