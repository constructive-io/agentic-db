# contactAddress

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactAddress records via agentic-db CLI

## Usage

```bash
agentic-db contact-address list
agentic-db contact-address get --id <UUID>
agentic-db contact-address create --entityId <UUID> --contactId <UUID> [--street <String>] [--city <String>] [--state <String>] [--postalCode <String>] [--country <String>] [--addressType <String>] [--isPrimary <Boolean>]
agentic-db contact-address update --id <UUID> [--entityId <UUID>] [--street <String>] [--city <String>] [--state <String>] [--postalCode <String>] [--country <String>] [--addressType <String>] [--isPrimary <Boolean>] [--contactId <UUID>]
agentic-db contact-address delete --id <UUID>
```

## Examples

### List all contactAddress records

```bash
agentic-db contact-address list
```

### Create a contactAddress

```bash
agentic-db contact-address create --entityId <UUID> --contactId <UUID> [--street <String>] [--city <String>] [--state <String>] [--postalCode <String>] [--country <String>] [--addressType <String>] [--isPrimary <Boolean>]
```

### Get a contactAddress by id

```bash
agentic-db contact-address get --id <value>
```
