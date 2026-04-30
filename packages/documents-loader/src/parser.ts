import { readFileSync } from 'fs';
import { basename, extname } from 'path';

export interface ParsedDocument {
  title: string;
  content: string;
  metadata: Record<string, unknown>;
  tags: string[];
}

export const SUPPORTED_EXTENSIONS = new Set([
  '.md',
  '.mdx',
  '.txt',
  '.rst',
  '.html',
  '.xml',
  '.json',
  '.yaml',
  '.yml',
  '.csv',
  '.tsv',
]);

const FRONTMATTER_REGEX = /^---\r?\n([\s\S]*?)\r?\n---\r?\n?([\s\S]*)$/;

function parseFrontmatter(raw: string): { attrs: Record<string, unknown>; body: string } {
  const match = raw.match(FRONTMATTER_REGEX);
  if (!match) {
    return { attrs: {}, body: raw };
  }

  const yamlBlock = match[1];
  const body = match[2];
  const attrs: Record<string, unknown> = {};

  for (const line of yamlBlock.split('\n')) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith('#')) continue;

    const colonIdx = trimmed.indexOf(':');
    if (colonIdx === -1) continue;

    const key = trimmed.slice(0, colonIdx).trim();
    let value: string | string[] = trimmed.slice(colonIdx + 1).trim();

    if (value.startsWith('[') && value.endsWith(']')) {
      value = value
        .slice(1, -1)
        .split(',')
        .map((v) => v.trim().replace(/^["']|["']$/g, ''))
        .filter(Boolean);
    } else {
      value = value.replace(/^["']|["']$/g, '');
    }

    attrs[key] = value;
  }

  return { attrs, body };
}

function titleFromFilename(filePath: string): string {
  const name = basename(filePath, extname(filePath));
  return name
    .replace(/[-_]/g, ' ')
    .replace(/\b\w/g, (c) => c.toUpperCase());
}

export function isSupportedFile(filePath: string): boolean {
  const ext = extname(filePath).toLowerCase();
  return SUPPORTED_EXTENSIONS.has(ext);
}

export function parseFile(filePath: string): ParsedDocument {
  const raw = readFileSync(filePath, 'utf-8');
  const ext = extname(filePath).toLowerCase();

  if (ext === '.md' || ext === '.mdx') {
    const { attrs, body } = parseFrontmatter(raw);
    const title = (attrs.title as string) || titleFromFilename(filePath);
    const tags = Array.isArray(attrs.tags) ? (attrs.tags as string[]) : [];

    const metadata: Record<string, unknown> = {};
    for (const [key, value] of Object.entries(attrs)) {
      if (key !== 'title' && key !== 'tags') {
        metadata[key] = value;
      }
    }

    return { title, content: body.trim(), metadata, tags };
  }

  return {
    title: titleFromFilename(filePath),
    content: raw,
    metadata: {},
    tags: [],
  };
}
