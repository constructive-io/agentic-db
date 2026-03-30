# dealContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DealContact records via agentic-db CLI

## Usage

```bash
agentic-db deal-contact list
agentic-db deal-contact get --id <UUID>
agentic-db deal-contact create --dealId <UUID> --contactId <UUID> --entityId <UUID>
agentic-db deal-contact update --id <UUID> [--dealId <UUID>] [--contactId <UUID>] [--entityId <UUID>]
agentic-db deal-contact delete --id <UUID>
```

## Examples

### List all dealContact records

```bash
agentic-db deal-contact list
```

### Create a dealContact

```bash
agentic-db deal-contact create --dealId <UUID> --contactId <UUID> --entityId <UUID>
```

### Get a dealContact by id

```bash
agentic-db deal-contact get --id <value>
```
