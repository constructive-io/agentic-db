/**
 * Self-contained .gitignore parser.
 *
 * Parses gitignore-style pattern files and tests paths against them.
 * Zero external dependencies — suitable for upstreaming to dev-utils.
 *
 * Spec: https://git-scm.com/docs/gitignore
 */

import { existsSync, readFileSync } from 'fs';
import { join, dirname, relative, sep } from 'path';

export interface GitignoreRule {
  pattern: string;
  regex: RegExp;
  negated: boolean;
  directoryOnly: boolean;
}

/**
 * Convert a gitignore glob pattern to a RegExp.
 *
 * Rules:
 * - `*` matches anything except `/`
 * - `?` matches any single char except `/`
 * - `**` matches zero or more path segments
 * - `[abc]` character classes are passed through
 * - Trailing `/` means directory-only match
 * - Leading `/` anchors to the .gitignore's directory
 * - If no `/` appears (other than trailing), pattern matches basename anywhere
 */
function patternToRegex(pattern: string, anchored: boolean): RegExp {
  let src = '';
  let i = 0;

  while (i < pattern.length) {
    const ch = pattern[i];

    if (ch === '*') {
      if (pattern[i + 1] === '*') {
        if (pattern[i + 2] === '/') {
          // `**/` — match zero or more directories
          src += '(?:.+/)?';
          i += 3;
        } else if (i + 2 === pattern.length) {
          // trailing `**` — match everything
          src += '.*';
          i += 2;
        } else {
          // `**` mid-pattern without `/` — treat like `*`
          src += '[^/]*';
          i += 2;
        }
      } else {
        src += '[^/]*';
        i++;
      }
    } else if (ch === '?') {
      src += '[^/]';
      i++;
    } else if (ch === '[') {
      // pass character class through
      const close = pattern.indexOf(']', i + 1);
      if (close === -1) {
        src += '\\[';
        i++;
      } else {
        src += pattern.slice(i, close + 1);
        i = close + 1;
      }
    } else if (ch === '/') {
      src += '/';
      i++;
    } else {
      // escape regex special chars
      src += ch.replace(/[\\^$.|+(){}]/g, '\\$&');
      i++;
    }
  }

  if (anchored) {
    return new RegExp(`^${src}(?:$|/)`);
  }
  return new RegExp(`(?:^|/)${src}(?:$|/)`);
}

/**
 * Parse a single gitignore line into a rule (or null for blanks/comments).
 */
export function parseGitignoreLine(line: string): GitignoreRule | null {
  // strip trailing whitespace (unless escaped)
  let trimmed = line.replace(/(?<!\\)\s+$/, '');
  if (!trimmed || trimmed.startsWith('#')) return null;

  let negated = false;
  if (trimmed.startsWith('!')) {
    negated = true;
    trimmed = trimmed.slice(1);
  }

  let directoryOnly = false;
  if (trimmed.endsWith('/')) {
    directoryOnly = true;
    trimmed = trimmed.slice(0, -1);
  }

  // Remove leading `/` — it anchors the pattern
  let anchored = false;
  if (trimmed.startsWith('/')) {
    anchored = true;
    trimmed = trimmed.slice(1);
  }

  // If the pattern contains a `/` in the middle, it's anchored
  if (!anchored && trimmed.includes('/')) {
    anchored = true;
  }

  const regex = patternToRegex(trimmed, anchored);

  return { pattern: trimmed, regex, negated, directoryOnly };
}

/**
 * Parse a full gitignore file content into an array of rules.
 */
export function parseGitignore(content: string): GitignoreRule[] {
  const rules: GitignoreRule[] = [];
  for (const line of content.split(/\r?\n/)) {
    const rule = parseGitignoreLine(line);
    if (rule) rules.push(rule);
  }
  return rules;
}

export interface GitignoreMatcher {
  /**
   * Test whether a relative path is ignored.
   * @param relativePath — forward-slash separated path relative to the gitignore root
   * @param isDirectory — whether the path is a directory
   */
  ignores(relativePath: string, isDirectory?: boolean): boolean;

  /** Add rules from another gitignore content string. */
  add(content: string): void;
}

/**
 * Create a matcher from gitignore content.
 */
export function createGitignoreMatcher(content?: string): GitignoreMatcher {
  const rules: GitignoreRule[] = [];
  if (content) {
    rules.push(...parseGitignore(content));
  }

  return {
    ignores(relativePath: string, isDirectory = false): boolean {
      // Normalize to forward slashes
      const normalized = relativePath.split(sep).join('/').replace(/^\//, '');

      let ignored = false;
      for (const rule of rules) {
        if (rule.directoryOnly && !isDirectory) continue;

        if (rule.regex.test(normalized)) {
          ignored = !rule.negated;
        }
      }
      return ignored;
    },

    add(content: string): void {
      rules.push(...parseGitignore(content));
    },
  };
}

/**
 * Load all .gitignore files from rootDir up through ancestor directories,
 * plus the one at rootDir itself. Returns a single matcher.
 */
export function loadGitignore(rootDir: string): GitignoreMatcher {
  const matcher = createGitignoreMatcher();

  const gitignorePath = join(rootDir, '.gitignore');
  if (existsSync(gitignorePath)) {
    const content = readFileSync(gitignorePath, 'utf-8');
    matcher.add(content);
  }

  return matcher;
}
