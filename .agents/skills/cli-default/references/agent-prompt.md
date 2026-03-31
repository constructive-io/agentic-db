# agentPrompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentPrompt records via agentic-db CLI

## Usage

```bash
agentic-db agent-prompt list
agentic-db agent-prompt list --where.<field>.<op> <value> --orderBy <values>
agentic-db agent-prompt list --limit 10 --after <cursor>
agentic-db agent-prompt find-first --where.<field>.<op> <value>
agentic-db agent-prompt get --id <UUID>
agentic-db agent-prompt create --agentId <UUID> --promptId <UUID> --entityId <UUID>
agentic-db agent-prompt update --id <UUID> [--agentId <UUID>] [--promptId <UUID>] [--entityId <UUID>]
agentic-db agent-prompt delete --id <UUID>
```

## Examples

### List agentPrompt records

```bash
agentic-db agent-prompt list
```

### List agentPrompt records with pagination

```bash
agentic-db agent-prompt list --limit 10 --offset 0
```

### List agentPrompt records with cursor pagination

```bash
agentic-db agent-prompt list --limit 10 --after <cursor>
```

### Find first matching agentPrompt

```bash
agentic-db agent-prompt find-first --where.id.equalTo <value>
```

### List agentPrompt records with field selection

```bash
agentic-db agent-prompt list --select id,id
```

### List agentPrompt records with filtering and ordering

```bash
agentic-db agent-prompt list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a agentPrompt

```bash
agentic-db agent-prompt create --agentId <UUID> --promptId <UUID> --entityId <UUID>
```

### Get a agentPrompt by id

```bash
agentic-db agent-prompt get --id <value>
```
