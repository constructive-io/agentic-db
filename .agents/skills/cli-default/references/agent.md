# agent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Agent records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `roleTrgmSimilarity`, `statusTrgmSimilarity`, `personaTrgmSimilarity`, `backstoryTrgmSimilarity`, `communicationStyleTrgmSimilarity`, `systemPromptTrgmSimilarity`, `preferredModelTrgmSimilarity`, `moodTrgmSimilarity`, `focusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db agent list
agentic-db agent get --id <UUID>
agentic-db agent create --entityId <UUID> --name <String> [--role <String>] [--capabilities <JSON>] [--config <JSON>] [--status <String>] [--persona <String>] [--backstory <String>] [--communicationStyle <String>] [--systemPrompt <String>] [--preferredModel <String>] [--fallbackModels <String>] [--temperature <BigFloat>] [--mood <String>] [--focus <String>] [--lastActiveAt <Datetime>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db agent update --id <UUID> [--entityId <UUID>] [--name <String>] [--role <String>] [--capabilities <JSON>] [--config <JSON>] [--status <String>] [--persona <String>] [--backstory <String>] [--communicationStyle <String>] [--systemPrompt <String>] [--preferredModel <String>] [--fallbackModels <String>] [--temperature <BigFloat>] [--mood <String>] [--focus <String>] [--lastActiveAt <Datetime>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db agent delete --id <UUID>
```

## Examples

### List all agent records

```bash
agentic-db agent list
```

### Create a agent

```bash
agentic-db agent create --entityId <UUID> --name <String> [--role <String>] [--capabilities <JSON>] [--config <JSON>] [--status <String>] [--persona <String>] [--backstory <String>] [--communicationStyle <String>] [--systemPrompt <String>] [--preferredModel <String>] [--fallbackModels <String>] [--temperature <BigFloat>] [--mood <String>] [--focus <String>] [--lastActiveAt <Datetime>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a agent by id

```bash
agentic-db agent get --id <value>
```
