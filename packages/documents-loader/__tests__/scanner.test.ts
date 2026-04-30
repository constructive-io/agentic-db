import { mkdtempSync, mkdirSync, writeFileSync, rmSync } from 'fs';
import { join } from 'path';
import { tmpdir } from 'os';

import { scanDirectory } from '../src/scanner';

describe('scanner', () => {
  let tempDir: string;

  beforeEach(() => {
    tempDir = mkdtempSync(join(tmpdir(), 'docloader-scanner-'));
  });

  afterEach(() => {
    rmSync(tempDir, { recursive: true, force: true });
  });

  it('should find markdown files', () => {
    writeFileSync(join(tempDir, 'readme.md'), '# Hello');
    writeFileSync(join(tempDir, 'notes.txt'), 'Notes');

    const files = scanDirectory(tempDir);
    expect(files).toHaveLength(2);
    expect(files.map((f) => f.relativePath).sort()).toEqual(['notes.txt', 'readme.md']);
  });

  it('should recurse into subdirectories', () => {
    mkdirSync(join(tempDir, 'docs'));
    mkdirSync(join(tempDir, 'docs', 'api'));
    writeFileSync(join(tempDir, 'readme.md'), '# Root');
    writeFileSync(join(tempDir, 'docs', 'guide.md'), '# Guide');
    writeFileSync(join(tempDir, 'docs', 'api', 'reference.md'), '# API');

    const files = scanDirectory(tempDir);
    expect(files).toHaveLength(3);
    expect(files.map((f) => f.relativePath)).toEqual([
      'docs/api/reference.md',
      'docs/guide.md',
      'readme.md',
    ]);
  });

  it('should ignore node_modules', () => {
    mkdirSync(join(tempDir, 'node_modules'));
    writeFileSync(join(tempDir, 'readme.md'), '# Hello');
    writeFileSync(join(tempDir, 'node_modules', 'dep.md'), '# Dep');

    const files = scanDirectory(tempDir);
    expect(files).toHaveLength(1);
    expect(files[0].relativePath).toBe('readme.md');
  });

  it('should ignore .git directory', () => {
    mkdirSync(join(tempDir, '.git'));
    writeFileSync(join(tempDir, 'readme.md'), '# Hello');
    writeFileSync(join(tempDir, '.git', 'config.txt'), 'git config');

    const files = scanDirectory(tempDir);
    expect(files).toHaveLength(1);
  });

  it('should skip unsupported file types', () => {
    writeFileSync(join(tempDir, 'readme.md'), '# Hello');
    writeFileSync(join(tempDir, 'image.png'), 'fake png');
    writeFileSync(join(tempDir, 'script.js'), 'console.log()');

    const files = scanDirectory(tempDir);
    expect(files).toHaveLength(1);
    expect(files[0].relativePath).toBe('readme.md');
  });

  it('should support custom extensions filter', () => {
    writeFileSync(join(tempDir, 'readme.md'), '# Hello');
    writeFileSync(join(tempDir, 'notes.txt'), 'Notes');
    writeFileSync(join(tempDir, 'data.json'), '{}');

    const files = scanDirectory(tempDir, { extensions: ['.md'] });
    expect(files).toHaveLength(1);
    expect(files[0].relativePath).toBe('readme.md');
  });

  it('should support custom ignore patterns', () => {
    mkdirSync(join(tempDir, 'drafts'));
    writeFileSync(join(tempDir, 'readme.md'), '# Hello');
    writeFileSync(join(tempDir, 'drafts', 'wip.md'), '# WIP');

    const files = scanDirectory(tempDir, { ignore: ['drafts'] });
    expect(files).toHaveLength(1);
    expect(files[0].relativePath).toBe('readme.md');
  });

  it('should return empty array for empty directory', () => {
    const files = scanDirectory(tempDir);
    expect(files).toEqual([]);
  });

  it('should include absolute and relative paths', () => {
    writeFileSync(join(tempDir, 'test.md'), '# Test');

    const files = scanDirectory(tempDir);
    expect(files).toHaveLength(1);
    expect(files[0].absolutePath).toBe(join(tempDir, 'test.md'));
    expect(files[0].relativePath).toBe('test.md');
  });

  it('should find multiple text-based formats', () => {
    writeFileSync(join(tempDir, 'doc.md'), '# MD');
    writeFileSync(join(tempDir, 'doc.mdx'), '# MDX');
    writeFileSync(join(tempDir, 'doc.txt'), 'TXT');
    writeFileSync(join(tempDir, 'doc.rst'), 'RST');
    writeFileSync(join(tempDir, 'doc.html'), '<html>');
    writeFileSync(join(tempDir, 'doc.yaml'), 'key: val');
    writeFileSync(join(tempDir, 'doc.csv'), 'a,b');

    const files = scanDirectory(tempDir);
    expect(files).toHaveLength(7);
  });
});
