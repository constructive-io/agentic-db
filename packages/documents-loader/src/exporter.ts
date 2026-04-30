import { existsSync, mkdirSync, writeFileSync } from 'fs';
import { dirname, join } from 'path';

import { DocumentClient, DocumentRecord } from './importer';

export interface ExportOptions {
  repoName: string;
  format?: 'md' | 'raw';
  includeFrontmatter?: boolean;
  onProgress?: (event: ExportProgressEvent) => void;
}

export interface ExportProgressEvent {
  type: 'exporting' | 'written' | 'skipped' | 'error' | 'done';
  filePath?: string;
  message: string;
  stats?: ExportStats;
}

export interface ExportStats {
  total: number;
  written: number;
  skipped: number;
  errors: number;
}

function emit(options: ExportOptions, event: ExportProgressEvent): void {
  if (options.onProgress) {
    options.onProgress(event);
  }
}

function buildFrontmatter(doc: DocumentRecord): string {
  const lines: string[] = ['---'];

  if (doc.title) {
    lines.push(`title: "${doc.title.replace(/"/g, '\\"')}"`);
  }
  if (doc.tags && doc.tags.length > 0) {
    lines.push(`tags: [${doc.tags.map((t) => `"${t}"`).join(', ')}]`);
  }
  if (doc.metadata && Object.keys(doc.metadata).length > 0) {
    for (const [key, value] of Object.entries(doc.metadata)) {
      if (typeof value === 'string') {
        lines.push(`${key}: "${value.replace(/"/g, '\\"')}"`);
      } else {
        lines.push(`${key}: ${JSON.stringify(value)}`);
      }
    }
  }

  lines.push('---');
  return lines.join('\n');
}

function resolveFilePath(doc: DocumentRecord): string | null {
  if (doc.filePath) return doc.filePath;

  if (doc.title) {
    const slug = doc.title
      .toLowerCase()
      .replace(/[^a-z0-9]+/g, '-')
      .replace(/^-|-$/g, '');
    return `${slug}.md`;
  }

  return null;
}

export async function exportDocuments(
  outputDir: string,
  client: DocumentClient,
  options: ExportOptions
): Promise<ExportStats> {
  const stats: ExportStats = { total: 0, written: 0, skipped: 0, errors: 0 };
  const includeFrontmatter = options.includeFrontmatter !== false;

  emit(options, { type: 'exporting', message: `Fetching documents for repo: ${options.repoName}` });
  const documents = await client.findByRepo(options.repoName);
  stats.total = documents.length;
  emit(options, { type: 'exporting', message: `Found ${documents.length} documents` });

  for (const doc of documents) {
    try {
      const relPath = resolveFilePath(doc);
      if (!relPath) {
        emit(options, {
          type: 'skipped',
          message: `Skipping document ${doc.id} — no file_path or title`,
        });
        stats.skipped++;
        continue;
      }

      const fullPath = join(outputDir, relPath);
      const dir = dirname(fullPath);

      if (!existsSync(dir)) {
        mkdirSync(dir, { recursive: true });
      }

      let fileContent = doc.content || '';

      if (includeFrontmatter && (options.format === 'md' || !options.format)) {
        const ext = relPath.split('.').pop()?.toLowerCase();
        if (ext === 'md' || ext === 'mdx' || !ext) {
          const frontmatter = buildFrontmatter(doc);
          if (frontmatter !== '---\n---') {
            fileContent = `${frontmatter}\n\n${fileContent}`;
          }
        }
      }

      writeFileSync(fullPath, fileContent, 'utf-8');
      stats.written++;
      emit(options, {
        type: 'written',
        filePath: relPath,
        message: `Wrote ${relPath}`,
      });
    } catch (err) {
      const msg = err instanceof Error ? err.message : String(err);
      emit(options, {
        type: 'error',
        filePath: doc.filePath || undefined,
        message: `Error exporting document ${doc.id}: ${msg}`,
      });
      stats.errors++;
    }
  }

  emit(options, { type: 'done', message: 'Export complete', stats });
  return stats;
}
