import { mkdtempSync, writeFileSync, rmSync } from 'fs';
import { join } from 'path';
import { tmpdir } from 'os';

import { parseFile, isSupportedFile } from '../src/parser';

describe('parser', () => {
  let tempDir: string;

  beforeEach(() => {
    tempDir = mkdtempSync(join(tmpdir(), 'docloader-parser-'));
  });

  afterEach(() => {
    rmSync(tempDir, { recursive: true, force: true });
  });

  describe('isSupportedFile', () => {
    it('should accept .md files', () => {
      expect(isSupportedFile('readme.md')).toBe(true);
    });

    it('should accept .mdx files', () => {
      expect(isSupportedFile('page.mdx')).toBe(true);
    });

    it('should accept .txt files', () => {
      expect(isSupportedFile('notes.txt')).toBe(true);
    });

    it('should accept .html files', () => {
      expect(isSupportedFile('index.html')).toBe(true);
    });

    it('should accept .yaml files', () => {
      expect(isSupportedFile('config.yaml')).toBe(true);
    });

    it('should accept .yml files', () => {
      expect(isSupportedFile('config.yml')).toBe(true);
    });

    it('should reject .pdf files', () => {
      expect(isSupportedFile('doc.pdf')).toBe(false);
    });

    it('should reject .png files', () => {
      expect(isSupportedFile('image.png')).toBe(false);
    });

    it('should reject .js files', () => {
      expect(isSupportedFile('script.js')).toBe(false);
    });
  });

  describe('parseFile', () => {
    it('should parse markdown with frontmatter', () => {
      const filePath = join(tempDir, 'test.md');
      writeFileSync(filePath, [
        '---',
        'title: "My Document"',
        'tags: ["tag1", "tag2"]',
        'author: "Dan"',
        '---',
        '',
        '# Hello World',
        '',
        'This is content.',
      ].join('\n'));

      const result = parseFile(filePath);
      expect(result.title).toBe('My Document');
      expect(result.tags).toEqual(['tag1', 'tag2']);
      expect(result.metadata).toEqual({ author: 'Dan' });
      expect(result.content).toBe('# Hello World\n\nThis is content.');
    });

    it('should parse markdown without frontmatter', () => {
      const filePath = join(tempDir, 'no-frontmatter.md');
      writeFileSync(filePath, '# Just Content\n\nNo frontmatter here.');

      const result = parseFile(filePath);
      expect(result.title).toBe('No Frontmatter');
      expect(result.tags).toEqual([]);
      expect(result.metadata).toEqual({});
      expect(result.content).toBe('# Just Content\n\nNo frontmatter here.');
    });

    it('should derive title from filename', () => {
      const filePath = join(tempDir, 'my-cool-doc.md');
      writeFileSync(filePath, 'Some content');

      const result = parseFile(filePath);
      expect(result.title).toBe('My Cool Doc');
    });

    it('should handle underscores in filename', () => {
      const filePath = join(tempDir, 'my_cool_doc.md');
      writeFileSync(filePath, 'Some content');

      const result = parseFile(filePath);
      expect(result.title).toBe('My Cool Doc');
    });

    it('should parse .mdx files like markdown', () => {
      const filePath = join(tempDir, 'component.mdx');
      writeFileSync(filePath, [
        '---',
        'title: "MDX Page"',
        '---',
        '',
        'import { Button } from "./button"',
        '',
        '# Hello MDX',
      ].join('\n'));

      const result = parseFile(filePath);
      expect(result.title).toBe('MDX Page');
      expect(result.content).toContain('import { Button }');
    });

    it('should parse .txt files as plain text', () => {
      const filePath = join(tempDir, 'notes.txt');
      writeFileSync(filePath, 'Plain text content here.');

      const result = parseFile(filePath);
      expect(result.title).toBe('Notes');
      expect(result.content).toBe('Plain text content here.');
      expect(result.tags).toEqual([]);
      expect(result.metadata).toEqual({});
    });

    it('should parse .html files as plain text', () => {
      const filePath = join(tempDir, 'page.html');
      writeFileSync(filePath, '<html><body><h1>Hello</h1></body></html>');

      const result = parseFile(filePath);
      expect(result.title).toBe('Page');
      expect(result.content).toBe('<html><body><h1>Hello</h1></body></html>');
    });

    it('should handle empty frontmatter values', () => {
      const filePath = join(tempDir, 'empty-tags.md');
      writeFileSync(filePath, [
        '---',
        'title: "Doc"',
        'tags: []',
        '---',
        '',
        'Content here.',
      ].join('\n'));

      const result = parseFile(filePath);
      expect(result.title).toBe('Doc');
      expect(result.tags).toEqual([]);
    });

    it('should parse .json files as plain text', () => {
      const filePath = join(tempDir, 'data.json');
      writeFileSync(filePath, '{"key": "value"}');

      const result = parseFile(filePath);
      expect(result.title).toBe('Data');
      expect(result.content).toBe('{"key": "value"}');
    });

    it('should parse .csv files as plain text', () => {
      const filePath = join(tempDir, 'data.csv');
      writeFileSync(filePath, 'name,age\nAlice,30\nBob,25');

      const result = parseFile(filePath);
      expect(result.title).toBe('Data');
      expect(result.content).toBe('name,age\nAlice,30\nBob,25');
    });
  });
});
