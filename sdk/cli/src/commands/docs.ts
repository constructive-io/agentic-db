/**
 * CLI command: agentic-db docs <subcommand>
 *
 * Import, export, and list documents from text-based file repositories.
 *
 * Subcommands:
 *   import <dir> --repo <name> [--tags t1,t2] [--commit <hash>] [--dry-run]
 *   export <dir> --repo <name> [--no-frontmatter]
 *   list   --repo <name>
 */
import type {
  DocumentRecord,
  ExportProgressEvent,
  ExportStats,
  ImportProgressEvent,
  ImportStats,
} from '@agentic-db/documents-loader';
import {
  createDocumentClient,
  exportDocuments,
  importDirectory,
} from '@agentic-db/documents-loader';
import { existsSync } from 'fs';
import { CLIOptions, extractFirst,Inquirerer } from 'inquirerer';
import { resolve } from 'path';

import { getClient } from '../../generated/cli/executor';

const usage = `
docs <subcommand>

  Import, export, and list documents from text-based file repositories.

Subcommands:
  import <dir>  Import files from a directory into the documents table
  export <dir>  Export documents from the database to a directory
  list          List documents for a repository

Options:
  --repo <name>       Repository name (required)
  --tags <t1,t2>      Comma-separated tags to apply (import only)
  --commit <hash>     Git commit hash to record (import only)
  --dry-run           Show what would be imported without writing (import only)
  --no-frontmatter    Skip frontmatter in exported files (export only)

Examples:
  agentic-db docs import ./my-docs --repo biz-docs --tags docs,internal
  agentic-db docs import ./content --repo blog --commit abc123 --dry-run
  agentic-db docs export ./output --repo biz-docs
  agentic-db docs export ./output --repo biz-docs --no-frontmatter
  agentic-db docs list --repo biz-docs
`;

export default async (
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer,
  _options: CLIOptions
) => {
  if (argv.help || argv.h) {
    console.log(usage);
    return;
  }

  const { first: subcommand, newArgv } = extractFirst(argv);

  if (!subcommand || !['import', 'export', 'list'].includes(subcommand)) {
    const answer = await prompter.prompt(argv, [
      {
        type: 'autocomplete',
        name: 'subcommand',
        message: 'What do you want to do?',
        options: ['import', 'export', 'list'],
      },
    ]);
    return handleSubcommand(answer.subcommand as string, newArgv, prompter);
  }

  return handleSubcommand(subcommand, newArgv, prompter);
};

async function handleSubcommand(
  subcommand: string,
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer
) {
  switch (subcommand) {
  case 'import':
    return handleImport(argv, prompter);
  case 'export':
    return handleExport(argv, prompter);
  case 'list':
    return handleList(argv, prompter);
  default:
    console.log(usage);
    process.exit(1);
  }
}

async function resolveRepo(
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer
): Promise<string> {
  let repo = argv.repo as string | undefined;
  if (!repo) {
    const answers = await prompter.prompt(argv, [
      {
        type: 'text',
        name: 'repo',
        message: 'Repository name:',
        required: true,
      },
    ]);
    repo = answers.repo as string;
  }
  return repo;
}

async function handleImport(
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer
) {
  const { first: dirArg, newArgv: rest } = extractFirst(argv);
  const newArgv = rest as Partial<Record<string, unknown>>;

  let dir = dirArg;
  if (!dir) {
    const answers = await prompter.prompt(argv, [
      {
        type: 'text',
        name: 'dir',
        message: 'Directory to import from:',
        required: true,
      },
    ]);
    dir = answers.dir as string;
  }

  const absDir = resolve(dir);
  if (!existsSync(absDir)) {
    console.error(`Directory not found: ${absDir}`);
    process.exit(1);
  }

  const repo = await resolveRepo(newArgv, prompter);
  const tagsRaw = (newArgv.tags as string) || '';
  const tags = tagsRaw ? tagsRaw.split(',').map((t: string) => t.trim()).filter(Boolean) : [];
  const commitHash = (newArgv.commit as string) || undefined;
  const dryRun = !!newArgv['dry-run'] || !!newArgv.dryRun;

  const sdk = getClient();
  const client = createDocumentClient(sdk);

  console.log(`\nImporting from ${absDir} into repo "${repo}"...`);
  if (dryRun) console.log('(dry run — no changes will be made)\n');

  const stats: ImportStats = await importDirectory(absDir, client, {
    repoName: repo,
    tags: tags.length > 0 ? tags : undefined,
    commitHash,
    dryRun,
    onProgress: (event: ImportProgressEvent) => {
      if (event.type === 'created' || event.type === 'updated' || event.type === 'error') {
        const icon = event.type === 'created' ? '+' : event.type === 'updated' ? '~' : '!';
        console.log(`  ${icon} ${event.message}`);
      }
    },
  });

  console.log(`\nImport complete:`);
  console.log(`  Total files:  ${stats.total}`);
  console.log(`  Created:      ${stats.created}`);
  console.log(`  Updated:      ${stats.updated}`);
  console.log(`  Skipped:      ${stats.skipped}`);
  console.log(`  Errors:       ${stats.errors}`);

  console.log(JSON.stringify(stats));
}

async function handleExport(
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer
) {
  const { first: dirArg, newArgv: rest } = extractFirst(argv);
  const newArgv = rest as Partial<Record<string, unknown>>;

  let dir = dirArg;
  if (!dir) {
    const answers = await prompter.prompt(argv, [
      {
        type: 'text',
        name: 'dir',
        message: 'Directory to export to:',
        required: true,
      },
    ]);
    dir = answers.dir as string;
  }

  const absDir = resolve(dir);
  const repo = await resolveRepo(newArgv, prompter);
  const noFrontmatter = !!newArgv['no-frontmatter'] || !!newArgv.noFrontmatter;

  const sdk = getClient();
  const client = createDocumentClient(sdk);

  console.log(`\nExporting repo "${repo}" to ${absDir}...`);

  const stats: ExportStats = await exportDocuments(absDir, client, {
    repoName: repo,
    includeFrontmatter: !noFrontmatter,
    onProgress: (event: ExportProgressEvent) => {
      if (event.type === 'written' || event.type === 'skipped' || event.type === 'error') {
        const icon = event.type === 'written' ? '+' : event.type === 'skipped' ? '-' : '!';
        console.log(`  ${icon} ${event.message}`);
      }
    },
  });

  console.log(`\nExport complete:`);
  console.log(`  Total docs:   ${stats.total}`);
  console.log(`  Written:      ${stats.written}`);
  console.log(`  Skipped:      ${stats.skipped}`);
  console.log(`  Errors:       ${stats.errors}`);

  console.log(JSON.stringify(stats));
}

async function handleList(
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer
) {
  const repo = await resolveRepo(argv, prompter);

  const sdk = getClient();
  const client = createDocumentClient(sdk);

  const docs = await client.findByRepo(repo);

  if (docs.length === 0) {
    console.log(`No documents found for repo "${repo}".`);
    return;
  }

  console.log(`\nDocuments in repo "${repo}" (${docs.length}):\n`);

  const output = docs.map((doc: DocumentRecord) => ({
    id: doc.id,
    title: doc.title || '(untitled)',
    filePath: doc.filePath || '(no path)',
    tags: doc.tags || [],
    updatedAt: doc.updatedAt || '(unknown)',
  }));

  console.log(JSON.stringify(output, null, 2));
}
