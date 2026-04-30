import { mkdtempSync, mkdirSync, writeFileSync, rmSync } from 'fs';
import { join } from 'path';
import { tmpdir } from 'os';

import { importDirectory, DocumentClient, DocumentRecord } from '../src/importer';

function createMockClient(): DocumentClient & {
  _store: Map<string, DocumentRecord>;
  _deleted: string[];
} {
  const store = new Map<string, DocumentRecord>();
  const deleted: string[] = [];

  return {
    _store: store,
    _deleted: deleted,

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
      deleted.push(id);
    },
  };
}

describe('importer', () => {
  let tempDir: string;

  beforeEach(() => {
    tempDir = mkdtempSync(join(tmpdir(), 'docloader-import-'));
  });

  afterEach(() => {
    rmSync(tempDir, { recursive: true, force: true });
  });

  it('should import markdown files from a directory', async () => {
    writeFileSync(
      join(tempDir, 'readme.md'),
      [
        '---',
        'title: "Project README"',
        'tags: ["docs", "readme"]',
        '---',
        '',
        '# My Project',
        '',
        'Welcome to the project.',
      ].join('\n')
    );
    writeFileSync(
      join(tempDir, 'notes.md'),
      '# Notes\n\nSome notes here.'
    );

    const client = createMockClient();
    const stats = await importDirectory(tempDir, client, {
      repoName: 'test-repo',
    });

    expect(stats.total).toBe(2);
    expect(stats.created).toBe(2);
    expect(stats.updated).toBe(0);
    expect(stats.errors).toBe(0);

    expect(client._store.size).toBe(2);

    const docs = [...client._store.values()];
    const readme = docs.find((d) => d.filePath === 'readme.md');
    expect(readme).toBeDefined();
    expect(readme!.title).toBe('Project README');
    expect(readme!.tags).toEqual(['docs', 'readme']);
    expect(readme!.content).toBe('# My Project\n\nWelcome to the project.');
    expect(readme!.repoName).toBe('test-repo');
  });

  it('should update existing documents (last-write-wins)', async () => {
    writeFileSync(join(tempDir, 'doc.md'), '# Original');

    const client = createMockClient();

    await importDirectory(tempDir, client, { repoName: 'test-repo' });
    expect(client._store.size).toBe(1);

    const originalDoc = [...client._store.values()][0];
    expect(originalDoc.content).toBe('# Original');

    writeFileSync(join(tempDir, 'doc.md'), '# Updated Content');

    const stats = await importDirectory(tempDir, client, { repoName: 'test-repo' });
    expect(stats.updated).toBe(1);
    expect(stats.created).toBe(0);
    expect(client._store.size).toBe(1);

    const updatedDoc = [...client._store.values()][0];
    expect(updatedDoc.content).toBe('# Updated Content');
    expect(updatedDoc.id).toBe(originalDoc.id);
  });

  it('should merge tags from file and options', async () => {
    writeFileSync(
      join(tempDir, 'tagged.md'),
      [
        '---',
        'title: "Tagged"',
        'tags: ["file-tag"]',
        '---',
        '',
        'Content',
      ].join('\n')
    );

    const client = createMockClient();
    await importDirectory(tempDir, client, {
      repoName: 'test-repo',
      tags: ['global-tag'],
    });

    const doc = [...client._store.values()][0];
    expect(doc.tags).toEqual(['file-tag', 'global-tag']);
  });

  it('should set commit hash on all documents', async () => {
    writeFileSync(join(tempDir, 'doc.md'), '# Doc');

    const client = createMockClient();
    await importDirectory(tempDir, client, {
      repoName: 'test-repo',
      commitHash: 'abc123',
    });

    const doc = [...client._store.values()][0];
    expect(doc.commitHash).toBe('abc123');
  });

  it('should handle nested directories', async () => {
    mkdirSync(join(tempDir, 'docs'));
    mkdirSync(join(tempDir, 'docs', 'api'));
    writeFileSync(join(tempDir, 'readme.md'), '# Root');
    writeFileSync(join(tempDir, 'docs', 'guide.md'), '# Guide');
    writeFileSync(join(tempDir, 'docs', 'api', 'reference.md'), '# API Ref');

    const client = createMockClient();
    const stats = await importDirectory(tempDir, client, {
      repoName: 'test-repo',
    });

    expect(stats.created).toBe(3);

    const docs = [...client._store.values()];
    const paths = docs.map((d) => d.filePath).sort();
    expect(paths).toEqual(['docs/api/reference.md', 'docs/guide.md', 'readme.md']);
  });

  it('should support dry run mode', async () => {
    writeFileSync(join(tempDir, 'doc.md'), '# Doc');

    const client = createMockClient();
    const stats = await importDirectory(tempDir, client, {
      repoName: 'test-repo',
      dryRun: true,
    });

    expect(stats.skipped).toBe(1);
    expect(stats.created).toBe(0);
    expect(client._store.size).toBe(0);
  });

  it('should report progress events', async () => {
    writeFileSync(join(tempDir, 'doc.md'), '# Doc');

    const events: string[] = [];
    const client = createMockClient();
    await importDirectory(tempDir, client, {
      repoName: 'test-repo',
      onProgress: (event) => events.push(event.type),
    });

    expect(events).toContain('scanning');
    expect(events).toContain('importing');
    expect(events).toContain('created');
    expect(events).toContain('done');
  });

  it('should handle empty directory', async () => {
    const client = createMockClient();
    const stats = await importDirectory(tempDir, client, {
      repoName: 'test-repo',
    });

    expect(stats.total).toBe(0);
    expect(stats.created).toBe(0);
  });

  it('should import multiple text formats', async () => {
    writeFileSync(join(tempDir, 'doc.md'), '# Markdown');
    writeFileSync(join(tempDir, 'notes.txt'), 'Plain text');
    writeFileSync(join(tempDir, 'data.json'), '{"key": "value"}');
    writeFileSync(join(tempDir, 'config.yaml'), 'setting: true');

    const client = createMockClient();
    const stats = await importDirectory(tempDir, client, {
      repoName: 'test-repo',
    });

    expect(stats.created).toBe(4);
    expect(client._store.size).toBe(4);
  });

  it('should deduplicate tags', async () => {
    writeFileSync(
      join(tempDir, 'doc.md'),
      [
        '---',
        'tags: ["shared"]',
        '---',
        '',
        'Content',
      ].join('\n')
    );

    const client = createMockClient();
    await importDirectory(tempDir, client, {
      repoName: 'test-repo',
      tags: ['shared', 'extra'],
    });

    const doc = [...client._store.values()][0];
    expect(doc.tags).toEqual(['shared', 'extra']);
  });
});
