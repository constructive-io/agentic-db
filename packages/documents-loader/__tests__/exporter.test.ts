import { mkdtempSync, readFileSync, rmSync, existsSync } from 'fs';
import { join } from 'path';
import { tmpdir } from 'os';

import { exportDocuments } from '../src/exporter';
import { DocumentClient, DocumentRecord } from '../src/importer';

function createMockClientWithDocs(docs: DocumentRecord[]): DocumentClient {
  return {
    async findByRepoAndPath(repoName: string, filePath: string) {
      return docs.find((d) => d.repoName === repoName && d.filePath === filePath) || null;
    },

    async findByRepo(repoName: string) {
      return docs.filter((d) => d.repoName === repoName);
    },

    async create(doc) {
      return { id: 'new', ...doc, updatedAt: null, tags: doc.tags || null, metadata: doc.metadata || null, commitHash: doc.commitHash || null };
    },

    async update(id, patch) {
      const existing = docs.find((d) => d.id === id);
      if (!existing) throw new Error('Not found');
      return { ...existing, ...patch };
    },

    async delete() {
      // noop
    },
  };
}

describe('exporter', () => {
  let tempDir: string;

  beforeEach(() => {
    tempDir = mkdtempSync(join(tmpdir(), 'docloader-export-'));
  });

  afterEach(() => {
    rmSync(tempDir, { recursive: true, force: true });
  });

  it('should export documents as markdown files', async () => {
    const docs: DocumentRecord[] = [
      {
        id: '1',
        title: 'Getting Started',
        content: '# Getting Started\n\nWelcome!',
        repoName: 'test-repo',
        filePath: 'getting-started.md',
        commitHash: null,
        tags: ['docs'],
        metadata: null,
        updatedAt: '2024-01-01T00:00:00Z',
      },
    ];

    const client = createMockClientWithDocs(docs);
    const stats = await exportDocuments(tempDir, client, {
      repoName: 'test-repo',
    });

    expect(stats.written).toBe(1);
    expect(stats.errors).toBe(0);

    const content = readFileSync(join(tempDir, 'getting-started.md'), 'utf-8');
    expect(content).toContain('---');
    expect(content).toContain('title: "Getting Started"');
    expect(content).toContain('tags: ["docs"]');
    expect(content).toContain('# Getting Started');
    expect(content).toContain('Welcome!');
  });

  it('should create nested directories for file paths', async () => {
    const docs: DocumentRecord[] = [
      {
        id: '1',
        title: 'API Ref',
        content: '# API Reference',
        repoName: 'test-repo',
        filePath: 'docs/api/reference.md',
        commitHash: null,
        tags: null,
        metadata: null,
        updatedAt: null,
      },
    ];

    const client = createMockClientWithDocs(docs);
    await exportDocuments(tempDir, client, { repoName: 'test-repo' });

    expect(existsSync(join(tempDir, 'docs', 'api', 'reference.md'))).toBe(true);
    const content = readFileSync(join(tempDir, 'docs', 'api', 'reference.md'), 'utf-8');
    expect(content).toContain('# API Reference');
  });

  it('should skip documents without file_path or title', async () => {
    const docs: DocumentRecord[] = [
      {
        id: '1',
        title: null,
        content: 'No path or title',
        repoName: 'test-repo',
        filePath: null,
        commitHash: null,
        tags: null,
        metadata: null,
        updatedAt: null,
      },
    ];

    const client = createMockClientWithDocs(docs);
    const stats = await exportDocuments(tempDir, client, {
      repoName: 'test-repo',
    });

    expect(stats.skipped).toBe(1);
    expect(stats.written).toBe(0);
  });

  it('should generate file path from title if no file_path', async () => {
    const docs: DocumentRecord[] = [
      {
        id: '1',
        title: 'My Great Document',
        content: 'Content here',
        repoName: 'test-repo',
        filePath: null,
        commitHash: null,
        tags: null,
        metadata: null,
        updatedAt: null,
      },
    ];

    const client = createMockClientWithDocs(docs);
    await exportDocuments(tempDir, client, { repoName: 'test-repo' });

    expect(existsSync(join(tempDir, 'my-great-document.md'))).toBe(true);
  });

  it('should export without frontmatter when disabled', async () => {
    const docs: DocumentRecord[] = [
      {
        id: '1',
        title: 'Raw Doc',
        content: '# Raw Content',
        repoName: 'test-repo',
        filePath: 'raw.md',
        commitHash: null,
        tags: ['tag1'],
        metadata: null,
        updatedAt: null,
      },
    ];

    const client = createMockClientWithDocs(docs);
    await exportDocuments(tempDir, client, {
      repoName: 'test-repo',
      includeFrontmatter: false,
    });

    const content = readFileSync(join(tempDir, 'raw.md'), 'utf-8');
    expect(content).not.toContain('---');
    expect(content).toBe('# Raw Content');
  });

  it('should include metadata in frontmatter', async () => {
    const docs: DocumentRecord[] = [
      {
        id: '1',
        title: 'Meta Doc',
        content: 'Content',
        repoName: 'test-repo',
        filePath: 'meta.md',
        commitHash: null,
        tags: null,
        metadata: { author: 'Dan', category: 'guide' },
        updatedAt: null,
      },
    ];

    const client = createMockClientWithDocs(docs);
    await exportDocuments(tempDir, client, { repoName: 'test-repo' });

    const content = readFileSync(join(tempDir, 'meta.md'), 'utf-8');
    expect(content).toContain('author: "Dan"');
    expect(content).toContain('category: "guide"');
  });

  it('should report progress events', async () => {
    const docs: DocumentRecord[] = [
      {
        id: '1',
        title: 'Doc',
        content: 'Content',
        repoName: 'test-repo',
        filePath: 'doc.md',
        commitHash: null,
        tags: null,
        metadata: null,
        updatedAt: null,
      },
    ];

    const events: string[] = [];
    const client = createMockClientWithDocs(docs);
    await exportDocuments(tempDir, client, {
      repoName: 'test-repo',
      onProgress: (event) => events.push(event.type),
    });

    expect(events).toContain('exporting');
    expect(events).toContain('written');
    expect(events).toContain('done');
  });

  it('should handle empty repo', async () => {
    const client = createMockClientWithDocs([]);
    const stats = await exportDocuments(tempDir, client, {
      repoName: 'empty-repo',
    });

    expect(stats.total).toBe(0);
    expect(stats.written).toBe(0);
  });

  it('should export multiple documents', async () => {
    const docs: DocumentRecord[] = [
      {
        id: '1',
        title: 'Doc A',
        content: 'Content A',
        repoName: 'test-repo',
        filePath: 'a.md',
        commitHash: null,
        tags: null,
        metadata: null,
        updatedAt: null,
      },
      {
        id: '2',
        title: 'Doc B',
        content: 'Content B',
        repoName: 'test-repo',
        filePath: 'b.md',
        commitHash: null,
        tags: null,
        metadata: null,
        updatedAt: null,
      },
      {
        id: '3',
        title: 'Other Repo',
        content: 'Should not appear',
        repoName: 'other-repo',
        filePath: 'c.md',
        commitHash: null,
        tags: null,
        metadata: null,
        updatedAt: null,
      },
    ];

    const client = createMockClientWithDocs(docs);
    const stats = await exportDocuments(tempDir, client, {
      repoName: 'test-repo',
    });

    expect(stats.total).toBe(2);
    expect(stats.written).toBe(2);
    expect(existsSync(join(tempDir, 'a.md'))).toBe(true);
    expect(existsSync(join(tempDir, 'b.md'))).toBe(true);
    expect(existsSync(join(tempDir, 'c.md'))).toBe(false);
  });
});
