import { mkdirSync, writeFileSync, rmSync } from 'fs';
import { join } from 'path';
import { tmpdir } from 'os';

import {
  parseGitignoreLine,
  parseGitignore,
  createGitignoreMatcher,
  loadGitignore,
} from '../src/gitignore';

describe('parseGitignoreLine', () => {
  it('returns null for empty lines', () => {
    expect(parseGitignoreLine('')).toBeNull();
    expect(parseGitignoreLine('   ')).toBeNull();
  });

  it('returns null for comments', () => {
    expect(parseGitignoreLine('# this is a comment')).toBeNull();
  });

  it('parses a simple pattern', () => {
    const rule = parseGitignoreLine('*.log');
    expect(rule).not.toBeNull();
    expect(rule!.negated).toBe(false);
    expect(rule!.directoryOnly).toBe(false);
  });

  it('parses negated patterns', () => {
    const rule = parseGitignoreLine('!important.log');
    expect(rule).not.toBeNull();
    expect(rule!.negated).toBe(true);
  });

  it('parses directory-only patterns', () => {
    const rule = parseGitignoreLine('build/');
    expect(rule).not.toBeNull();
    expect(rule!.directoryOnly).toBe(true);
  });

  it('strips trailing whitespace', () => {
    const rule = parseGitignoreLine('*.log   ');
    expect(rule).not.toBeNull();
    expect(rule!.pattern).toBe('*.log');
  });
});

describe('parseGitignore', () => {
  it('parses multiple lines with blanks and comments', () => {
    const content = `
# Build artifacts
dist/
build/

# Logs
*.log

# But keep error logs
!error.log
`;
    const rules = parseGitignore(content);
    expect(rules).toHaveLength(4);
    expect(rules[0].directoryOnly).toBe(true);
    expect(rules[0].pattern).toBe('dist');
    expect(rules[3].negated).toBe(true);
  });

  it('handles Windows line endings', () => {
    const content = '*.log\r\ndist/\r\n';
    const rules = parseGitignore(content);
    expect(rules).toHaveLength(2);
  });
});

describe('createGitignoreMatcher', () => {
  it('matches simple glob patterns', () => {
    const m = createGitignoreMatcher('*.log');
    expect(m.ignores('debug.log')).toBe(true);
    expect(m.ignores('src/debug.log')).toBe(true);
    expect(m.ignores('debug.txt')).toBe(false);
  });

  it('matches directory-only patterns only for directories', () => {
    const m = createGitignoreMatcher('build/');
    expect(m.ignores('build', true)).toBe(true);
    expect(m.ignores('build', false)).toBe(false);
  });

  it('handles negation (un-ignore)', () => {
    const m = createGitignoreMatcher('*.log\n!important.log');
    expect(m.ignores('debug.log')).toBe(true);
    expect(m.ignores('important.log')).toBe(false);
  });

  it('matches double-star patterns for nested paths', () => {
    const m = createGitignoreMatcher('**/logs');
    expect(m.ignores('logs')).toBe(true);
    expect(m.ignores('src/logs')).toBe(true);
    expect(m.ignores('src/deep/logs')).toBe(true);
  });

  it('matches double-star in the middle', () => {
    const m = createGitignoreMatcher('src/**/test.ts');
    expect(m.ignores('src/test.ts')).toBe(true);
    expect(m.ignores('src/utils/test.ts')).toBe(true);
    expect(m.ignores('src/a/b/test.ts')).toBe(true);
    expect(m.ignores('lib/test.ts')).toBe(false);
  });

  it('matches anchored patterns (leading /)', () => {
    const m = createGitignoreMatcher('/TODO');
    expect(m.ignores('TODO')).toBe(true);
    expect(m.ignores('src/TODO')).toBe(false);
  });

  it('matches ? wildcard', () => {
    const m = createGitignoreMatcher('file?.txt');
    expect(m.ignores('file1.txt')).toBe(true);
    expect(m.ignores('fileA.txt')).toBe(true);
    expect(m.ignores('file.txt')).toBe(false);
    expect(m.ignores('file12.txt')).toBe(false);
  });

  it('matches character classes', () => {
    const m = createGitignoreMatcher('file[0-9].txt');
    expect(m.ignores('file0.txt')).toBe(true);
    expect(m.ignores('file9.txt')).toBe(true);
    expect(m.ignores('fileA.txt')).toBe(false);
  });

  it('anchors patterns with / in the middle', () => {
    const m = createGitignoreMatcher('doc/generated');
    expect(m.ignores('doc/generated')).toBe(true);
    expect(m.ignores('src/doc/generated')).toBe(false);
  });

  it('handles the add() method for incremental rules', () => {
    const m = createGitignoreMatcher('*.log');
    expect(m.ignores('test.tmp')).toBe(false);
    m.add('*.tmp');
    expect(m.ignores('test.tmp')).toBe(true);
  });

  it('handles a realistic .gitignore', () => {
    const content = `
node_modules/
dist/
.env
.env.local
*.log
coverage/
.DS_Store
*.tsbuildinfo
`;
    const m = createGitignoreMatcher(content);

    // Directories
    expect(m.ignores('node_modules', true)).toBe(true);
    expect(m.ignores('dist', true)).toBe(true);
    expect(m.ignores('coverage', true)).toBe(true);

    // Files
    expect(m.ignores('.env')).toBe(true);
    expect(m.ignores('.env.local')).toBe(true);
    expect(m.ignores('debug.log')).toBe(true);
    expect(m.ignores('src/app.log')).toBe(true);
    expect(m.ignores('.DS_Store')).toBe(true);
    expect(m.ignores('tsconfig.tsbuildinfo')).toBe(true);

    // Should NOT be ignored
    expect(m.ignores('src/index.ts')).toBe(false);
    expect(m.ignores('package.json')).toBe(false);
    expect(m.ignores('README.md')).toBe(false);
  });
});

describe('loadGitignore', () => {
  let tmpDir: string;

  beforeEach(() => {
    tmpDir = join(tmpdir(), `gitignore-test-${Date.now()}-${Math.random().toString(36).slice(2)}`);
    mkdirSync(tmpDir, { recursive: true });
  });

  afterEach(() => {
    rmSync(tmpDir, { recursive: true, force: true });
  });

  it('loads .gitignore from root directory', () => {
    writeFileSync(join(tmpDir, '.gitignore'), '*.log\ndist/\n');
    const m = loadGitignore(tmpDir);

    expect(m.ignores('debug.log')).toBe(true);
    expect(m.ignores('dist', true)).toBe(true);
    expect(m.ignores('src/index.ts')).toBe(false);
  });

  it('returns empty matcher when no .gitignore exists', () => {
    const m = loadGitignore(tmpDir);
    expect(m.ignores('anything.log')).toBe(false);
    expect(m.ignores('node_modules', true)).toBe(false);
  });

  it('handles empty .gitignore', () => {
    writeFileSync(join(tmpDir, '.gitignore'), '');
    const m = loadGitignore(tmpDir);
    expect(m.ignores('anything')).toBe(false);
  });
});
