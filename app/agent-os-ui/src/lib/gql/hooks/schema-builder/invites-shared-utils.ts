export type InviteRole = 'admin' | 'member';
export type InviteStatus = 'pending' | 'expired' | 'claimed';

export interface BaseInvite {
	id: string;
	email: string | null;
	role: InviteRole;
	status: InviteStatus;
	createdAt: string;
	expiresAt: string;
	inviteValid: boolean;
	inviteToken: string;
	inviteCount: number;
	inviteLimit: number;
	sender: {
		id: string;
		displayName: string | null;
		username: string | null;
	} | null;
	data: unknown;
}

export interface BaseClaimedInvite {
	id: string;
	createdAt: string;
	role: InviteRole;
	email: string | null;
	sender: {
		id: string;
		displayName: string | null;
		username: string | null;
	} | null;
	receiver: {
		id: string;
		displayName: string | null;
		username: string | null;
	} | null;
	data: unknown;
}

export function parseInviteRole(data: unknown): InviteRole {
	if (!data || typeof data !== 'object') return 'member';
	const role = (data as { role?: unknown }).role;
	return role === 'admin' || role === 'member' ? role : 'member';
}

export function parseInviteEmailFallback(data: unknown): string | null {
	if (!data || typeof data !== 'object') return null;
	const email = (data as { email?: unknown }).email;
	return typeof email === 'string' ? email : null;
}

export function deriveInviteStatus(inviteValid: boolean, expiresAt: string): InviteStatus {
	if (!inviteValid) {
		const expiresAtTime = Date.parse(expiresAt);
		if (Number.isFinite(expiresAtTime) && expiresAtTime > Date.now()) {
			return 'claimed';
		}
	}

	if (inviteValid) {
		const expiresAtTime = Date.parse(expiresAt);
		if (Number.isFinite(expiresAtTime) && expiresAtTime <= Date.now()) {
			return 'expired';
		}
	}

	return 'pending';
}

export interface InviteNode {
	id: string;
	email?: string | null | undefined;
	data?: unknown;
	createdAt: string;
	expiresAt: string;
	inviteValid: boolean;
	inviteToken: string;
	inviteCount: number;
	inviteLimit: number;
	sender?:
		| {
				id: string;
				displayName?: string | null | undefined;
				username?: string | null | undefined;
		  }
		| null
		| undefined;
}

export interface ClaimedInviteNode {
	id: string;
	createdAt: string;
	data?: unknown;
	sender?:
		| {
				id: string;
				displayName?: string | null | undefined;
				username?: string | null | undefined;
		  }
		| null
		| undefined;
	receiver?:
		| {
				id: string;
				displayName?: string | null | undefined;
				username?: string | null | undefined;
		  }
		| null
		| undefined;
}

export function transformActiveInvite(node: InviteNode): BaseInvite {
	const email = node.email ?? parseInviteEmailFallback(node.data) ?? null;
	const role = parseInviteRole(node.data);

	return {
		id: node.id,
		email,
		role,
		status: deriveInviteStatus(node.inviteValid, node.expiresAt),
		createdAt: node.createdAt,
		expiresAt: node.expiresAt,
		inviteValid: node.inviteValid,
		inviteToken: node.inviteToken,
		inviteCount: node.inviteCount,
		inviteLimit: node.inviteLimit,
		sender: node.sender
			? {
					id: node.sender.id,
					displayName: node.sender.displayName ?? null,
					username: node.sender.username ?? null,
				}
			: null,
		data: node.data ?? null,
	};
}

export function transformClaimedInvite(node: ClaimedInviteNode): BaseClaimedInvite {
	return {
		id: node.id,
		createdAt: node.createdAt,
		role: parseInviteRole(node.data),
		email: parseInviteEmailFallback(node.data) ?? null,
		sender: node.sender
			? {
					id: node.sender.id,
					displayName: node.sender.displayName ?? null,
					username: node.sender.username ?? null,
				}
			: null,
		receiver: node.receiver
			? {
					id: node.receiver.id,
					displayName: node.receiver.displayName ?? null,
					username: node.receiver.username ?? null,
				}
			: null,
		data: node.data ?? null,
	};
}
