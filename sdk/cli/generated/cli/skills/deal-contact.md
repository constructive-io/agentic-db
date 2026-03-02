# agent-os-deal-contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DealContact records via agent-os CLI

## Usage

```bash
agent-os deal-contact list
agent-os deal-contact get --id <value>
agent-os deal-contact create --dealId <value> --contactId <value> --entityId <value>
agent-os deal-contact update --id <value> [--dealId <value>] [--contactId <value>] [--entityId <value>]
agent-os deal-contact delete --id <value>
```

## Examples

### List all dealContact records

```bash
agent-os deal-contact list
```

### Create a dealContact

```bash
agent-os deal-contact create --dealId "value" --contactId "value" --entityId "value"
```

### Get a dealContact by id

```bash
agent-os deal-contact get --id <value>
```

### Update a dealContact

```bash
agent-os deal-contact update --id <value> --dealId "new-value"
```

### Delete a dealContact

```bash
agent-os deal-contact delete --id <value>
```
