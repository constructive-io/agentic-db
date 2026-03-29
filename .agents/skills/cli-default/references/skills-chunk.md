# skillsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SkillsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db skills-chunk list
agentic-db skills-chunk get --id <UUID>
agentic-db skills-chunk create --entityId <UUID> --skillsId <UUID> --content <String> --skillId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db skills-chunk update --id <UUID> [--entityId <UUID>] [--skillsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--skillId <UUID>]
agentic-db skills-chunk delete --id <UUID>
```

## Examples

### List all skillsChunk records

```bash
agentic-db skills-chunk list
```

### Create a skillsChunk

```bash
agentic-db skills-chunk create --entityId <UUID> --skillsId <UUID> --content <String> --skillId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a skillsChunk by id

```bash
agentic-db skills-chunk get --id <value>
```
