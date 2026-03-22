# conversation

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Conversation records via agentic-db CLI

## Usage

```bash
agentic-db conversation list
agentic-db conversation get --id <UUID>
agentic-db conversation create --entityId <UUID> --title <String> [--agentId <UUID>] [--status <String>] [--meta <JSON>]
agentic-db conversation update --id <UUID> [--entityId <UUID>] [--title <String>] [--agentId <UUID>] [--status <String>] [--meta <JSON>]
agentic-db conversation delete --id <UUID>
```

## Examples

### List all conversation records

```bash
agentic-db conversation list
```

### Create a conversation

```bash
agentic-db conversation create --entityId <UUID> --title <String> [--agentId <UUID>] [--status <String>] [--meta <JSON>]
```

### Get a conversation by id

```bash
agentic-db conversation get --id <value>
```
