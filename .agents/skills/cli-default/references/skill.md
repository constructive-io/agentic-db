# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Skill records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db skill list
agentic-db skill get --id <UUID>
agentic-db skill create --entityId <UUID> --name <String> --agentId <UUID> [--description <String>] [--category <String>] [--implementation <String>] [--config <JSON>] [--isActive <Boolean>] [--intentTrigger <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--intentTriggerEmbedding <Vector>]
agentic-db skill update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--category <String>] [--implementation <String>] [--config <JSON>] [--isActive <Boolean>] [--intentTrigger <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--intentTriggerEmbedding <Vector>] [--agentId <UUID>]
agentic-db skill delete --id <UUID>
```

## Examples

### List all skill records

```bash
agentic-db skill list
```

### Create a skill

```bash
agentic-db skill create --entityId <UUID> --name <String> --agentId <UUID> [--description <String>] [--category <String>] [--implementation <String>] [--config <JSON>] [--isActive <Boolean>] [--intentTrigger <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--intentTriggerEmbedding <Vector>]
```

### Get a skill by id

```bash
agentic-db skill get --id <value>
```
