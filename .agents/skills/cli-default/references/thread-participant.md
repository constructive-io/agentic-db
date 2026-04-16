# threadParticipant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ThreadParticipant records via agentic-db CLI

## Usage

```bash
agentic-db thread-participant list
agentic-db thread-participant list --where.<field>.<op> <value> --orderBy <values>
agentic-db thread-participant list --limit 10 --after <cursor>
agentic-db thread-participant find-first --where.<field>.<op> <value>
agentic-db thread-participant get --id <UUID>
agentic-db thread-participant create --emailThreadId <UUID> --contactId <UUID>
agentic-db thread-participant update --id <UUID> [--emailThreadId <UUID>] [--contactId <UUID>]
agentic-db thread-participant delete --id <UUID>
```

## Examples

### List threadParticipant records

```bash
agentic-db thread-participant list
```

### List threadParticipant records with pagination

```bash
agentic-db thread-participant list --limit 10 --offset 0
```

### List threadParticipant records with cursor pagination

```bash
agentic-db thread-participant list --limit 10 --after <cursor>
```

### Find first matching threadParticipant

```bash
agentic-db thread-participant find-first --where.id.equalTo <value>
```

### List threadParticipant records with field selection

```bash
agentic-db thread-participant list --select id,id
```

### List threadParticipant records with filtering and ordering

```bash
agentic-db thread-participant list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a threadParticipant

```bash
agentic-db thread-participant create --emailThreadId <UUID> --contactId <UUID>
```

### Get a threadParticipant by id

```bash
agentic-db thread-participant get --id <value>
```
