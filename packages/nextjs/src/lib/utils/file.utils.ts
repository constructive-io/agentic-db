// Parse image data - handles both URL strings and image objects
export const getImageUrl = (imageValue: unknown): string | null => {
	if (!imageValue) return null;

	// If it's a string, assume it's a URL
	if (typeof imageValue === 'string') {
		return imageValue;
	}

	// If it's an object, look for common URL properties
	if (typeof imageValue === 'object' && imageValue !== null) {
		// Try different possible URL properties
		const urlCandidates = ['url', 'src', 'href', 'link', 'path'];
		for (const candidate of urlCandidates) {
			const obj = imageValue as Record<string, unknown>;
			if (obj[candidate] && typeof obj[candidate] === 'string') {
				return obj[candidate] as string;
			}
		}
	}

	return null;
};

// Get image metadata from image object
export const getImageMetadata = (imageValue: unknown) => {
	if (!imageValue || typeof imageValue !== 'object') return null;

	const obj = imageValue as Record<string, unknown>;
	return {
		filename: (obj.filename as string) || (obj.name as string) || 'Unknown',
		size: (obj.size as number) || (obj.fileSize as number) || 0,
		mime: (obj.mime as string) || (obj.type as string) || (obj.contentType as string) || 'unknown',
		url: getImageUrl(imageValue) || '',
	};
};

// Format file size for display
export const formatFileSize = (bytes: number): string => {
	if (bytes === 0) return '0 B';
	const k = 1024;
	const sizes = ['B', 'KB', 'MB', 'GB'];
	const i = Math.floor(Math.log(bytes) / Math.log(k));
	return parseFloat((bytes / Math.pow(k, i)).toFixed(1)) + ' ' + sizes[i];
};
