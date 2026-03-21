# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Skill records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `slugTrgmSimilarity`, `descriptionTrgmSimilarity`, `contentTrgmSimilarity`, `procedureTrgmSimilarity`, `filePathTrgmSimilarity`, `contentHashTrgmSimilarity`, `categoryTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db skill list
agentic-db skill get --id <UUID>
agentic-db skill create --entityId <UUID> --name <String> [--slug <String>] [--description <String>] [--content <String>] [--procedure <String>] [--interface <JSON>] [--requirements <JSON>] [--prerequisites <JSON>] [--alwaysLoad <Boolean>] [--filePath <String>] [--contentHash <String>] [--category <String>] [--isActive <Boolean>] [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--intentTrigger <Vector>]
agentic-db skill update --id <UUID> [--entityId <UUID>] [--name <String>] [--slug <String>] [--description <String>] [--content <String>] [--procedure <String>] [--interface <JSON>] [--requirements <JSON>] [--prerequisites <JSON>] [--alwaysLoad <Boolean>] [--filePath <String>] [--contentHash <String>] [--category <String>] [--isActive <Boolean>] [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--intentTrigger <Vector>]
agentic-db skill delete --id <UUID>
```

## Examples

### List all skill records

```bash
agentic-db skill list
```

### Create a skill

```bash
agentic-db skill create --entityId <UUID> --name <String> [--slug <String>] [--description <String>] [--content <String>] [--procedure <String>] [--interface <JSON>] [--requirements <JSON>] [--prerequisites <JSON>] [--alwaysLoad <Boolean>] [--filePath <String>] [--contentHash <String>] [--category <String>] [--isActive <Boolean>] [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--intentTrigger <Vector>]
```

### Get a skill by id

```bash
agentic-db skill get --id <value>
```
