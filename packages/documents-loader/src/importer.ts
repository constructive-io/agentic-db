import { ParsedDocument,parseFile } from './parser';
import { scanDirectory, ScanOptions } from './scanner';

export interface ImportOptions {
  repoName: string;
  tags?: string[];
  commitHash?: string;
  scanOptions?: ScanOptions;
  dryRun?: boolean;
  onProgress?: (event: ImportProgressEvent) => void;
}

export interface ImportProgressEvent {
  type: 'scanning' | 'importing' | 'created' | 'updated' | 'skipped' | 'error' | 'done';
  filePath?: string;
  message: string;
  stats?: ImportStats;
}

export interface ImportStats {
  total: number;
  created: number;
  updated: number;
  skipped: number;
  errors: number;
}

export interface DocumentRecord {
  id: string;
  title?: string | null;
  content?: string | null;
  repoName?: string | null;
  filePath?: string | null;
  commitHash?: string | null;
  tags?: string[] | null;
  metadata?: Record<string, unknown> | null;
  updatedAt?: string | null;
}

export interface DocumentClient {
  findByRepoAndPath(repoName: string, filePath: string): Promise<DocumentRecord | null>;
  findByRepo(repoName: string): Promise<DocumentRecord[]>;
  create(doc: {
    title: string;
    content: string;
    repoName: string;
    filePath: string;
    commitHash?: string;
    tags?: string[];
    metadata?: Record<string, unknown>;
  }): Promise<DocumentRecord>;
  update(
    id: string,
    patch: {
      title?: string;
      content?: string;
      commitHash?: string | null;
      tags?: string[] | null;
      metadata?: Record<string, unknown> | null;
    }
  ): Promise<DocumentRecord>;
  delete(id: string): Promise<void>;
}

function emit(options: ImportOptions, event: ImportProgressEvent): void {
  if (options.onProgress) {
    options.onProgress(event);
  }
}

export async function importDirectory(
  rootDir: string,
  client: DocumentClient,
  options: ImportOptions
): Promise<ImportStats> {
  const stats: ImportStats = { total: 0, created: 0, updated: 0, skipped: 0, errors: 0 };

  emit(options, { type: 'scanning', message: `Scanning ${rootDir}...` });
  const files = scanDirectory(rootDir, options.scanOptions);
  stats.total = files.length;
  emit(options, { type: 'scanning', message: `Found ${files.length} files` });

  for (const file of files) {
    try {
      emit(options, {
        type: 'importing',
        filePath: file.relativePath,
        message: `Processing ${file.relativePath}`,
      });

      let parsed: ParsedDocument;
      try {
        parsed = parseFile(file.absolutePath);
      } catch (err) {
        const msg = err instanceof Error ? err.message : String(err);
        emit(options, {
          type: 'error',
          filePath: file.relativePath,
          message: `Failed to parse ${file.relativePath}: ${msg}`,
        });
        stats.errors++;
        continue;
      }

      const mergeTags = [...parsed.tags, ...(options.tags || [])];
      const uniqueTags = [...new Set(mergeTags)];

      if (options.dryRun) {
        emit(options, {
          type: 'skipped',
          filePath: file.relativePath,
          message: `[dry-run] Would import ${file.relativePath}`,
        });
        stats.skipped++;
        continue;
      }

      const existing = await client.findByRepoAndPath(options.repoName, file.relativePath);

      if (existing) {
        await client.update(existing.id, {
          title: parsed.title,
          content: parsed.content,
          commitHash: options.commitHash,
          tags: uniqueTags.length > 0 ? uniqueTags : null,
          metadata: Object.keys(parsed.metadata).length > 0 ? parsed.metadata : null,
        });
        stats.updated++;
        emit(options, {
          type: 'updated',
          filePath: file.relativePath,
          message: `Updated ${file.relativePath}`,
        });
      } else {
        await client.create({
          title: parsed.title,
          content: parsed.content,
          repoName: options.repoName,
          filePath: file.relativePath,
          commitHash: options.commitHash,
          tags: uniqueTags.length > 0 ? uniqueTags : undefined,
          metadata: Object.keys(parsed.metadata).length > 0 ? parsed.metadata : undefined,
        });
        stats.created++;
        emit(options, {
          type: 'created',
          filePath: file.relativePath,
          message: `Created ${file.relativePath}`,
        });
      }
    } catch (err) {
      const msg = err instanceof Error ? err.message : String(err);
      emit(options, {
        type: 'error',
        filePath: file.relativePath,
        message: `Error importing ${file.relativePath}: ${msg}`,
      });
      stats.errors++;
    }
  }

  emit(options, { type: 'done', message: 'Import complete', stats });
  return stats;
}
