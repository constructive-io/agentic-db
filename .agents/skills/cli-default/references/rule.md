# rule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Rule records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db rule list
agentic-db rule get --id <UUID>
agentic-db rule create --entityId <UUID> --name <String> --agentId <UUID> [--description <String>] [--triggerType <String>] [--triggerConfig <JSON>] [--actionType <String>] [--actionConfig <JSON>] [--isActive <Boolean>] [--priority <Int>] [--triggerConcept <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--triggerConceptEmbedding <Vector>]
agentic-db rule update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--triggerType <String>] [--triggerConfig <JSON>] [--actionType <String>] [--actionConfig <JSON>] [--isActive <Boolean>] [--priority <Int>] [--triggerConcept <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--triggerConceptEmbedding <Vector>] [--agentId <UUID>]
agentic-db rule delete --id <UUID>
```

## Examples

### List all rule records

```bash
agentic-db rule list
```

### Create a rule

```bash
agentic-db rule create --entityId <UUID> --name <String> --agentId <UUID> [--description <String>] [--triggerType <String>] [--triggerConfig <JSON>] [--actionType <String>] [--actionConfig <JSON>] [--isActive <Boolean>] [--priority <Int>] [--triggerConcept <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--triggerConceptEmbedding <Vector>]
```

### Get a rule by id

```bash
agentic-db rule get --id <value>
```
