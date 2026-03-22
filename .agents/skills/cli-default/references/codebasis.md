# codebasis

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Codebasis records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db codebasis list
agentic-db codebasis get --id <UUID>
agentic-db codebasis create --entityId <UUID> --name <String> [--description <String>] [--repositoryUrl <String>] [--defaultBranch <String>] [--language <String>] [--framework <String>] [--lastSyncedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db codebasis update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--repositoryUrl <String>] [--defaultBranch <String>] [--language <String>] [--framework <String>] [--lastSyncedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db codebasis delete --id <UUID>
```

## Examples

### List all codebasis records

```bash
agentic-db codebasis list
```

### Create a codebasis

```bash
agentic-db codebasis create --entityId <UUID> --name <String> [--description <String>] [--repositoryUrl <String>] [--defaultBranch <String>] [--language <String>] [--framework <String>] [--lastSyncedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a codebasis by id

```bash
agentic-db codebasis get --id <value>
```
