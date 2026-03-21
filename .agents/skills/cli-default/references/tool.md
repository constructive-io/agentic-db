# tool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Tool records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `typeTrgmSimilarity`, `endpointTrgmSimilarity`, `authMethodTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db tool list
agentic-db tool get --id <UUID>
agentic-db tool create --entityId <UUID> --name <String> [--description <String>] [--type <String>] [--inputSchema <JSON>] [--outputSchema <JSON>] [--endpoint <String>] [--authMethod <String>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db tool update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--type <String>] [--inputSchema <JSON>] [--outputSchema <JSON>] [--endpoint <String>] [--authMethod <String>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db tool delete --id <UUID>
```

## Examples

### List all tool records

```bash
agentic-db tool list
```

### Create a tool

```bash
agentic-db tool create --entityId <UUID> --name <String> [--description <String>] [--type <String>] [--inputSchema <JSON>] [--outputSchema <JSON>] [--endpoint <String>] [--authMethod <String>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a tool by id

```bash
agentic-db tool get --id <value>
```
