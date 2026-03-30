# contactEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactEvent records via agentic-db CLI

## Usage

```bash
agentic-db contact-event list
agentic-db contact-event get --id <UUID>
agentic-db contact-event create --contactId <UUID> --eventId <UUID> --entityId <UUID>
agentic-db contact-event update --id <UUID> [--contactId <UUID>] [--eventId <UUID>] [--entityId <UUID>]
agentic-db contact-event delete --id <UUID>
```

## Examples

### List all contactEvent records

```bash
agentic-db contact-event list
```

### Create a contactEvent

```bash
agentic-db contact-event create --contactId <UUID> --eventId <UUID> --entityId <UUID>
```

### Get a contactEvent by id

```bash
agentic-db contact-event get --id <value>
```
