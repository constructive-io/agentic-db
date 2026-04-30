import { mkdtempSync, mkdirSync, writeFileSync, readFileSync, rmSync, existsSync } from 'fs';
import { join } from 'path';
import { tmpdir } from 'os';

import { importDirectory, DocumentClient, DocumentRecord } from '../src/importer';
import { exportDocuments } from '../src/exporter';

function createMockClient(): DocumentClient & {
  _store: Map<string, DocumentRecord>;
} {
  const store = new Map<string, DocumentRecord>();

  return {
    _store: store,

    async findByRepoAndPath(repoName: string, filePath: string) {
      for (const doc of store.values()) {
        if (doc.repoName === repoName && doc.filePath === filePath) {
          return doc;
        }
      }
      return null;
    },

    async findByRepo(repoName: string) {
      return [...store.values()].filter((d) => d.repoName === repoName);
    },

    async create(doc) {
      const id = `doc-${store.size + 1}`;
      const record: DocumentRecord = {
        id,
        title: doc.title,
        content: doc.content,
        repoName: doc.repoName,
        filePath: doc.filePath,
        commitHash: doc.commitHash || null,
        tags: doc.tags || null,
        metadata: doc.metadata || null,
        updatedAt: new Date().toISOString(),
      };
      store.set(id, record);
      return record;
    },

    async update(id, patch) {
      const existing = store.get(id);
      if (!existing) throw new Error(`Document ${id} not found`);
      const updated: DocumentRecord = {
        ...existing,
        ...patch,
        id,
        updatedAt: new Date().toISOString(),
      };
      store.set(id, updated);
      return updated;
    },

    async delete(id) {
      store.delete(id);
    },
  };
}

describe('roundtrip: import -> export', () => {
  let sourceDir: string;
  let exportDir: string;

  beforeEach(() => {
    sourceDir = mkdtempSync(join(tmpdir(), 'docloader-rt-src-'));
    exportDir = mkdtempSync(join(tmpdir(), 'docloader-rt-exp-'));
  });

  afterEach(() => {
    rmSync(sourceDir, { recursive: true, force: true });
    rmSync(exportDir, { recursive: true, force: true });
  });

  it('should preserve content through import/export cycle', async () => {
    const originalContent = [
      '---',
      'title: "Architecture Guide"',
      'tags: ["architecture", "guide"]',
      '---',
      '',
      '# Architecture Guide',
      '',
      '## Overview',
      '',
      'This document describes the system architecture.',
      '',
      '## Components',
      '',
      '- Database',
      '- API Server',
      '- Worker',
    ].join('\n');

    writeFileSync(join(sourceDir, 'architecture.md'), originalContent);

    const client = createMockClient();

    const importStats = await importDirectory(sourceDir, client, {
      repoName: 'my-repo',
    });
    expect(importStats.created).toBe(1);

    const exportStats = await exportDocuments(exportDir, client, {
      repoName: 'my-repo',
    });
    expect(exportStats.written).toBe(1);

    const exported = readFileSync(join(exportDir, 'architecture.md'), 'utf-8');
    expect(exported).toContain('title: "Architecture Guide"');
    expect(exported).toContain('tags: ["architecture", "guide"]');
    expect(exported).toContain('# Architecture Guide');
    expect(exported).toContain('## Overview');
    expect(exported).toContain('- Database');
  });

  it('should handle a directory tree roundtrip', async () => {
    mkdirSync(join(sourceDir, 'docs'));
    mkdirSync(join(sourceDir, 'docs', 'api'));

    writeFileSync(join(sourceDir, 'README.md'), '# Project\n\nMain readme.');
    writeFileSync(join(sourceDir, 'docs', 'setup.md'), '# Setup\n\nHow to set up.');
    writeFileSync(
      join(sourceDir, 'docs', 'api', 'endpoints.md'),
      '# API Endpoints\n\nGET /health'
    );

    const client = createMockClient();

    const importStats = await importDirectory(sourceDir, client, {
      repoName: 'my-project',
      tags: ['imported'],
    });
    expect(importStats.created).toBe(3);

    const exportStats = await exportDocuments(exportDir, client, {
      repoName: 'my-project',
    });
    expect(exportStats.written).toBe(3);

    expect(existsSync(join(exportDir, 'README.md'))).toBe(true);
    expect(existsSync(join(exportDir, 'docs', 'setup.md'))).toBe(true);
    expect(existsSync(join(exportDir, 'docs', 'api', 'endpoints.md'))).toBe(true);

    const readmeContent = readFileSync(join(exportDir, 'README.md'), 'utf-8');
    expect(readmeContent).toContain('# Project');
    expect(readmeContent).toContain('Main readme.');
  });

  it('should handle re-import after editing the database (last-write-wins)', async () => {
    writeFileSync(join(sourceDir, 'doc.md'), '# Version 1');

    const client = createMockClient();

    await importDirectory(sourceDir, client, { repoName: 'repo' });
    expect(client._store.size).toBe(1);

    const doc = [...client._store.values()][0];
    await client.update(doc.id, { content: '# DB Edited Version' });

    writeFileSync(join(sourceDir, 'doc.md'), '# File Version 2');
    const stats = await importDirectory(sourceDir, client, { repoName: 'repo' });
    expect(stats.updated).toBe(1);

    const updated = [...client._store.values()][0];
    expect(updated.content).toBe('# File Version 2');
  });

  it('should handle mixed file types in roundtrip', async () => {
    writeFileSync(join(sourceDir, 'notes.md'), '# Notes\n\nMarkdown notes.');
    writeFileSync(join(sourceDir, 'plain.txt'), 'Just plain text.');
    writeFileSync(join(sourceDir, 'config.yaml'), 'key: value\nother: 123');

    const client = createMockClient();

    const importStats = await importDirectory(sourceDir, client, {
      repoName: 'mixed-repo',
    });
    expect(importStats.created).toBe(3);

    const exportStats = await exportDocuments(exportDir, client, {
      repoName: 'mixed-repo',
    });
    expect(exportStats.written).toBe(3);

    const notesContent = readFileSync(join(exportDir, 'notes.md'), 'utf-8');
    expect(notesContent).toContain('# Notes');

    const plainContent = readFileSync(join(exportDir, 'plain.txt'), 'utf-8');
    expect(plainContent).toContain('Just plain text.');

    const yamlContent = readFileSync(join(exportDir, 'config.yaml'), 'utf-8');
    expect(yamlContent).toContain('key: value');
  });
});
