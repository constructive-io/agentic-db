# contactEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactEvent records via agent-db CLI

## Usage

```bash
agent-db contact-event list
agent-db contact-event get --id <value>
agent-db contact-event create --contactId <value> --eventId <value> --entityId <value>
agent-db contact-event update --id <value> [--contactId <value>] [--eventId <value>] [--entityId <value>]
agent-db contact-event delete --id <value>
```

## Examples

### List all contactEvent records

```bash
agent-db contact-event list
```

### Create a contactEvent

```bash
agent-db contact-event create --contactId <value> --eventId <value> --entityId <value>
```

### Get a contactEvent by id

```bash
agent-db contact-event get --id <value>
```
