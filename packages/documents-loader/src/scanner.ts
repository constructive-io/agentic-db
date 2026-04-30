import { readdirSync, statSync } from 'fs';
import { extname, join, relative } from 'path';

import { isSupportedFile, SUPPORTED_EXTENSIONS } from './parser';

export interface ScannedFile {
  absolutePath: string;
  relativePath: string;
}

export interface ScanOptions {
  extensions?: string[];
  ignore?: string[];
}

const DEFAULT_IGNORE = [
  'node_modules',
  '.git',
  '.next',
  'dist',
  'build',
  '__pycache__',
  '.DS_Store',
];

export function scanDirectory(rootDir: string, options: ScanOptions = {}): ScannedFile[] {
  const allowedExtensions = options.extensions
    ? new Set(options.extensions.map((e) => (e.startsWith('.') ? e : `.${e}`)))
    : SUPPORTED_EXTENSIONS;

  const ignoreSet = new Set([...DEFAULT_IGNORE, ...(options.ignore || [])]);
  const results: ScannedFile[] = [];

  function walk(dir: string): void {
    const entries = readdirSync(dir);
    for (const entry of entries) {
      if (ignoreSet.has(entry)) continue;

      const fullPath = join(dir, entry);
      const stat = statSync(fullPath);

      if (stat.isDirectory()) {
        walk(fullPath);
      } else if (stat.isFile()) {
        const isSupported = options.extensions
          ? allowedExtensions.has(extname(entry).toLowerCase())
          : isSupportedFile(entry);

        if (isSupported) {
          results.push({
            absolutePath: fullPath,
            relativePath: relative(rootDir, fullPath),
          });
        }
      }
    }
  }

  walk(rootDir);
  return results.sort((a, b) => a.relativePath.localeCompare(b.relativePath));
}
