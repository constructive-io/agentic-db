/**
 * RAG configuration management.
 *
 * Stores RAG provider settings in ~/.config/agent-db/rag.json
 */
import { RagProviderConfig, DEFAULT_RAG_CONFIG } from './embeddings/provider';
import { existsSync, mkdirSync, readFileSync, writeFileSync } from 'fs';
import { join } from 'path';
import { homedir } from 'os';

const CONFIG_DIR = join(homedir(), '.config', 'agent-db');
const CONFIG_FILE = join(CONFIG_DIR, 'rag.json');

function ensureConfigDir(): void {
  if (!existsSync(CONFIG_DIR)) {
    mkdirSync(CONFIG_DIR, { recursive: true });
  }
}

export function getRagConfig(): RagProviderConfig {
  try {
    if (existsSync(CONFIG_FILE)) {
      const raw = readFileSync(CONFIG_FILE, 'utf-8');
      const stored = JSON.parse(raw) as Partial<RagProviderConfig>;
      return { ...DEFAULT_RAG_CONFIG, ...stored };
    }
  } catch {
    // Config doesn't exist or is malformed, use defaults
  }
  return { ...DEFAULT_RAG_CONFIG };
}

export function setRagConfig(config: Partial<RagProviderConfig>): void {
  ensureConfigDir();
  const current = getRagConfig();
  const merged = { ...current, ...config };
  writeFileSync(CONFIG_FILE, JSON.stringify(merged, null, 2), 'utf-8');
}

export function setRagConfigValue(key: string, value: string): void {
  const config = getRagConfig() as Record<string, unknown>;
  config[key] = value;
  setRagConfig(config as Partial<RagProviderConfig>);
}

export function resetRagConfig(): void {
  ensureConfigDir();
  writeFileSync(CONFIG_FILE, JSON.stringify(DEFAULT_RAG_CONFIG, null, 2), 'utf-8');
}
