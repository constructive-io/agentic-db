# agentic-db-contact-event

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactEvent records via agentic-db CLI

## Usage

```bash
agentic-db contact-event list
agentic-db contact-event get --id <value>
agentic-db contact-event create --contactId <value> --eventId <value> --entityId <value>
agentic-db contact-event update --id <value> [--contactId <value>] [--eventId <value>] [--entityId <value>]
agentic-db contact-event delete --id <value>
```

## Examples

### List all contactEvent records

```bash
agentic-db contact-event list
```

### Create a contactEvent

```bash
agentic-db contact-event create --contactId "value" --eventId "value" --entityId "value"
```

### Get a contactEvent by id

```bash
agentic-db contact-event get --id <value>
```

### Update a contactEvent

```bash
agentic-db contact-event update --id <value> --contactId "new-value"
```

### Delete a contactEvent

```bash
agentic-db contact-event delete --id <value>
```
