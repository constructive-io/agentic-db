import { isDebugEnabled } from './debug';
import type { Logger, LogMeta } from './types';

export interface CreateLoggerOptions {
	readonly namespace?: string;
	readonly scope?: string;
	readonly includeTimestamp?: boolean;
	readonly enabled?: boolean;
	readonly debugStorageKey?: string;
	readonly defaultDebugEnabledInDev?: boolean;
	readonly debugMethod?: 'log' | 'debug';
	readonly infoMethod?: 'log' | 'info';
	readonly gateDebug?: boolean;
	readonly outputMode?: 'object' | 'styled';
	readonly levelTagStyles?: Partial<Record<LogLevel, string>>;
}

type LogLevel = 'debug' | 'info' | 'warn' | 'error';

function emitObject(
	method: 'log' | 'info' | 'warn' | 'error' | 'debug',
	payload: Record<string, unknown>,
): void {
	if (typeof console === 'undefined') return;
	const fn = (console as any)[method] as unknown;
	if (typeof fn !== 'function') return;
	(fn as (arg: unknown) => void)(payload);
}

function emitStyled(
	method: 'log' | 'info' | 'warn' | 'error' | 'debug',
	tag: string,
	tagStyle: string,
	message: string,
	payload: Record<string, unknown>,
): void {
	if (typeof console === 'undefined') return;
	const fn = (console as any)[method] as unknown;
	if (typeof fn !== 'function') return;

	// Keep payload as a separate argument for inspection and future log shipping.
	(fn as (...args: unknown[]) => void)(`%c${tag}%c ${message}`, tagStyle, '', payload);
}

export function createLogger(options: CreateLoggerOptions = {}): Logger {
	const namespace = options.namespace ?? 'constructive';
	const scope = options.scope;
	const includeTimestamp = options.includeTimestamp ?? false;
	const enabled = options.enabled ?? true;
	const debugStorageKey = options.debugStorageKey ?? 'CONSTRUCTIVE_DEBUG_CONFIG';
	const defaultDebugEnabledInDev = options.defaultDebugEnabledInDev ?? true;
	const debugMethod = options.debugMethod ?? 'debug';
	const infoMethod = options.infoMethod ?? 'info';
	const gateDebug = options.gateDebug ?? true;
	const outputMode = options.outputMode ?? 'object';
	const levelTagStyles: Record<LogLevel, string> = {
		debug: 'color:#64748b;font-weight:600',
		info: 'color:#2563eb;font-weight:600',
		warn: 'color:#d97706;font-weight:600',
		error: 'color:#dc2626;font-weight:600',
		...(options.levelTagStyles ?? {}),
	};

	function getTag(): string {
		return scope ? `${namespace}:${scope}` : namespace;
	}

	function buildPayload(level: LogLevel, message: string, meta?: LogMeta): Record<string, unknown> {
		const payload: Record<string, unknown> = {
			tag: getTag(),
			namespace,
			scope,
			level,
			message,
		};

		if (includeTimestamp) {
			payload.timestamp = new Date().toISOString();
		}

		if (meta && Object.keys(meta).length > 0) {
			payload.meta = meta;
		}

		return payload;
	}

	function emit(
		level: LogLevel,
		method: 'log' | 'info' | 'warn' | 'error' | 'debug',
		message: string,
		meta?: LogMeta,
	): void {
		const payload = buildPayload(level, message, meta);
		const tag = payload.tag as string;
		if (outputMode === 'styled') {
			emitStyled(method, tag, levelTagStyles[level], message, payload);
			return;
		}
		emitObject(method, payload);
	}

	return {
		debug: (message, meta) => {
			if (!enabled) return;
			if (gateDebug && !isDebugEnabled({ storageKey: debugStorageKey, defaultEnabledInDev: defaultDebugEnabledInDev })) return;
			emit('debug', debugMethod, message, meta);
		},
		info: (message, meta) => {
			if (!enabled) return;
			emit('info', infoMethod, message, meta);
		},
		warn: (message, meta) => {
			if (!enabled) return;
			emit('warn', 'warn', message, meta);
		},
		error: (message, meta) => {
			if (!enabled) return;
			emit('error', 'error', message, meta);
		},
	};
}
