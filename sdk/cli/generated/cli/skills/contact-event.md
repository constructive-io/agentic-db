# agent-os-contact-event

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactEvent records via agent-os CLI

## Usage

```bash
agent-os contact-event list
agent-os contact-event get --id <value>
agent-os contact-event create --contactId <value> --eventId <value> --entityId <value>
agent-os contact-event update --id <value> [--contactId <value>] [--eventId <value>] [--entityId <value>]
agent-os contact-event delete --id <value>
```

## Examples

### List all contactEvent records

```bash
agent-os contact-event list
```

### Create a contactEvent

```bash
agent-os contact-event create --contactId "value" --eventId "value" --entityId "value"
```

### Get a contactEvent by id

```bash
agent-os contact-event get --id <value>
```

### Update a contactEvent

```bash
agent-os contact-event update --id <value> --contactId "new-value"
```

### Delete a contactEvent

```bash
agent-os contact-event delete --id <value>
```
