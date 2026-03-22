# contactNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactNote records via agentic-db CLI

## Usage

```bash
agentic-db contact-note list
agentic-db contact-note get --id <UUID>
agentic-db contact-note create --contactId <UUID> --noteId <UUID> --entityId <UUID>
agentic-db contact-note update --id <UUID> [--contactId <UUID>] [--noteId <UUID>] [--entityId <UUID>]
agentic-db contact-note delete --id <UUID>
```

## Examples

### List all contactNote records

```bash
agentic-db contact-note list
```

### Create a contactNote

```bash
agentic-db contact-note create --contactId <UUID> --noteId <UUID> --entityId <UUID>
```

### Get a contactNote by id

```bash
agentic-db contact-note get --id <value>
```
