# dealContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DealContact records via agent-db CLI

## Usage

```bash
agent-db deal-contact list
agent-db deal-contact get --id <value>
agent-db deal-contact create --dealId <value> --contactId <value> --entityId <value>
agent-db deal-contact update --id <value> [--dealId <value>] [--contactId <value>] [--entityId <value>]
agent-db deal-contact delete --id <value>
```

## Examples

### List all dealContact records

```bash
agent-db deal-contact list
```

### Create a dealContact

```bash
agent-db deal-contact create --dealId <value> --contactId <value> --entityId <value>
```

### Get a dealContact by id

```bash
agent-db deal-contact get --id <value>
```
