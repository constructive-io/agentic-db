# emailNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailNote records via agentic-db CLI

## Usage

```bash
agentic-db email-note list
agentic-db email-note get --id <UUID>
agentic-db email-note create --emailId <UUID> --noteId <UUID> --entityId <UUID>
agentic-db email-note update --id <UUID> [--emailId <UUID>] [--noteId <UUID>] [--entityId <UUID>]
agentic-db email-note delete --id <UUID>
```

## Examples

### List all emailNote records

```bash
agentic-db email-note list
```

### Create a emailNote

```bash
agentic-db email-note create --emailId <UUID> --noteId <UUID> --entityId <UUID>
```

### Get a emailNote by id

```bash
agentic-db email-note get --id <value>
```
