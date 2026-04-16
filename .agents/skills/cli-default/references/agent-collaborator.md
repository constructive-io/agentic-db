# agentCollaborator

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentCollaborator records via agentic-db CLI

## Usage

```bash
agentic-db agent-collaborator list
agentic-db agent-collaborator list --where.<field>.<op> <value> --orderBy <values>
agentic-db agent-collaborator list --limit 10 --after <cursor>
agentic-db agent-collaborator find-first --where.<field>.<op> <value>
agentic-db agent-collaborator get --id <UUID>
agentic-db agent-collaborator create --agentId <UUID> --collaboratorId <UUID>
agentic-db agent-collaborator update --id <UUID> [--agentId <UUID>] [--collaboratorId <UUID>]
agentic-db agent-collaborator delete --id <UUID>
```

## Examples

### List agentCollaborator records

```bash
agentic-db agent-collaborator list
```

### List agentCollaborator records with pagination

```bash
agentic-db agent-collaborator list --limit 10 --offset 0
```

### List agentCollaborator records with cursor pagination

```bash
agentic-db agent-collaborator list --limit 10 --after <cursor>
```

### Find first matching agentCollaborator

```bash
agentic-db agent-collaborator find-first --where.id.equalTo <value>
```

### List agentCollaborator records with field selection

```bash
agentic-db agent-collaborator list --select id,id
```

### List agentCollaborator records with filtering and ordering

```bash
agentic-db agent-collaborator list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a agentCollaborator

```bash
agentic-db agent-collaborator create --agentId <UUID> --collaboratorId <UUID>
```

### Get a agentCollaborator by id

```bash
agentic-db agent-collaborator get --id <value>
```
