# eventNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventNote records via agentic-db CLI

## Usage

```bash
agentic-db event-note list
agentic-db event-note get --id <UUID>
agentic-db event-note create --eventId <UUID> --noteId <UUID> --entityId <UUID>
agentic-db event-note update --id <UUID> [--eventId <UUID>] [--noteId <UUID>] [--entityId <UUID>]
agentic-db event-note delete --id <UUID>
```

## Examples

### List all eventNote records

```bash
agentic-db event-note list
```

### Create a eventNote

```bash
agentic-db event-note create --eventId <UUID> --noteId <UUID> --entityId <UUID>
```

### Get a eventNote by id

```bash
agentic-db event-note get --id <value>
```
