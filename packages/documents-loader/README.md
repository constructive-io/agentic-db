# @agentic-db/documents-loader

Load, import, and export text-based files (markdown, MDX, plain text, etc.) into the agentic-db `documents` table.

## Features

- **Import** a directory of markdown/text files into the documents table
- **Export** documents back to disk as files, preserving directory structure
- **Bidirectional sync** between Git repositories and the database
- **Frontmatter parsing** for `.md` and `.mdx` files (title, tags, metadata)
- **Last-write-wins** conflict resolution for seamless workflows
- Supports `.md`, `.mdx`, `.txt`, `.rst`, `.html`, `.xml`, `.json`, `.yaml`, `.yml`, `.csv`, `.tsv`

## Usage

### As a library

```typescript
import {
  importDirectory,
  exportDocuments,
  createDocumentClient,
} from '@agentic-db/documents-loader';
import { createClient } from '@agentic-db/sdk';

const sdk = createClient({ endpoint: '...', headers: { ... } });
const client = createDocumentClient(sdk);

// Import files from a directory
const importStats = await importDirectory('./my-docs', client, {
  repoName: 'my-repo',
  tags: ['docs'],
  commitHash: 'abc123',
});

// Export documents back to disk
const exportStats = await exportDocuments('./output', client, {
  repoName: 'my-repo',
  includeFrontmatter: true,
});
```

### Via the CLI

```bash
# Import a directory of docs
agentic-db docs import ./my-docs --repo my-repo --tags docs,internal

# Export documents to a directory
agentic-db docs export ./output --repo my-repo

# List documents for a repo
agentic-db docs list --repo my-repo
```

## How it works

### Import

1. Scans the directory for supported text files
2. Parses frontmatter from `.md`/`.mdx` files to extract title, tags, and metadata
3. Matches files to existing documents by `repo_name + file_path`
4. Creates new documents or updates existing ones (last-write-wins)
5. The database's auto-embed triggers handle embedding generation

### Export

1. Fetches all documents for the specified `repo_name`
2. Writes each document to disk at its `file_path`
3. Optionally includes frontmatter (title, tags, metadata) in markdown files
4. Creates nested directories as needed

### Conflict Resolution

Uses **last-write-wins**: whichever operation runs last (import or manual DB edit) determines the current state. This keeps the workflow simple and predictable.
