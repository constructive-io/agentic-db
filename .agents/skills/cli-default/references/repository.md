# repository

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Repository records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `urlTrgmSimilarity`, `descriptionTrgmSimilarity`, `defaultBranchTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db repository list
agentic-db repository get --id <UUID>
agentic-db repository create --entityId <UUID> --name <String> [--url <String>] [--description <String>] [--defaultBranch <String>] [--lastSyncedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db repository update --id <UUID> [--entityId <UUID>] [--name <String>] [--url <String>] [--description <String>] [--defaultBranch <String>] [--lastSyncedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db repository delete --id <UUID>
```

## Examples

### List all repository records

```bash
agentic-db repository list
```

### Create a repository

```bash
agentic-db repository create --entityId <UUID> --name <String> [--url <String>] [--description <String>] [--defaultBranch <String>] [--lastSyncedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a repository by id

```bash
agentic-db repository get --id <value>
```
