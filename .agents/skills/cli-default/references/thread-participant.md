# threadParticipant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ThreadParticipant records via agentic-db CLI

## Usage

```bash
agentic-db thread-participant list
agentic-db thread-participant get --id <UUID>
agentic-db thread-participant create --emailThreadId <UUID> --contactId <UUID> --entityId <UUID>
agentic-db thread-participant update --id <UUID> [--emailThreadId <UUID>] [--contactId <UUID>] [--entityId <UUID>]
agentic-db thread-participant delete --id <UUID>
```

## Examples

### List all threadParticipant records

```bash
agentic-db thread-participant list
```

### Create a threadParticipant

```bash
agentic-db thread-participant create --emailThreadId <UUID> --contactId <UUID> --entityId <UUID>
```

### Get a threadParticipant by id

```bash
agentic-db thread-participant get --id <value>
```
