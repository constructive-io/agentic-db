# agent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Agent records via agent-os CLI

## Usage

```bash
agent-os agent list
agent-os agent get --id <value>
agent-os agent create --entityId <value> --name <value> --embeddingDistance <value> [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>]
agent-os agent update --id <value> [--entityId <value>] [--name <value>] [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os agent delete --id <value>
```

## Examples

### List all agent records

```bash
agent-os agent list
```

### Create a agent

```bash
agent-os agent create --entityId <value> --name <value> --embeddingDistance <value> [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a agent by id

```bash
agent-os agent get --id <value>
```
