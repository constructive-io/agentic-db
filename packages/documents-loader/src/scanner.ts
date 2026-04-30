import { existsSync, readdirSync, readFileSync, statSync } from 'fs';
import { extname, join, relative } from 'path';

import { loadGitignore, GitignoreMatcher } from './gitignore';
import { isSupportedFile, SUPPORTED_EXTENSIONS } from './parser';

export interface ScannedFile {
  absolutePath: string;
  relativePath: string;
}

export interface ScanOptions {
  extensions?: string[];
  ignore?: string[];
  /** Skip reading .gitignore files. Defaults to false. */
  skipGitignore?: boolean;
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

  // Load root .gitignore
  const gitignore: GitignoreMatcher | null = options.skipGitignore
    ? null
    : loadGitignore(rootDir);

  function walk(dir: string): void {
    // Load nested .gitignore files (not the root one, already loaded)
    if (gitignore && dir !== rootDir) {
      const nestedGitignore = join(dir, '.gitignore');
      if (existsSync(nestedGitignore)) {
        gitignore.add(readFileSync(nestedGitignore, 'utf-8'));
      }
    }

    const entries = readdirSync(dir);
    for (const entry of entries) {
      if (ignoreSet.has(entry)) continue;

      const fullPath = join(dir, entry);
      const stat = statSync(fullPath);
      const relPath = relative(rootDir, fullPath);

      if (stat.isDirectory()) {
        if (gitignore && gitignore.ignores(relPath, true)) continue;
        walk(fullPath);
      } else if (stat.isFile()) {
        if (gitignore && gitignore.ignores(relPath, false)) continue;

        const isSupported = options.extensions
          ? allowedExtensions.has(extname(entry).toLowerCase())
          : isSupportedFile(entry);

        if (isSupported) {
          results.push({
            absolutePath: fullPath,
            relativePath: relPath,
          });
        }
      }
    }
  }

  walk(rootDir);
  return results.sort((a, b) => a.relativePath.localeCompare(b.relativePath));
}
