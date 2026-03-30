# codebase

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Codebase records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `repositoryUrlTrgmSimilarity`, `defaultBranchTrgmSimilarity`, `languageTrgmSimilarity`, `frameworkTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db codebase list
agentic-db codebase get --id <UUID>
agentic-db codebase create --entityId <UUID> --name <String> [--description <String>] [--repositoryUrl <String>] [--defaultBranch <String>] [--language <String>] [--framework <String>] [--lastSyncedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db codebase update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--repositoryUrl <String>] [--defaultBranch <String>] [--language <String>] [--framework <String>] [--lastSyncedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db codebase delete --id <UUID>
```

## Examples

### List all codebase records

```bash
agentic-db codebase list
```

### Create a codebase

```bash
agentic-db codebase create --entityId <UUID> --name <String> [--description <String>] [--repositoryUrl <String>] [--defaultBranch <String>] [--language <String>] [--framework <String>] [--lastSyncedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a codebase by id

```bash
agentic-db codebase get --id <value>
```
