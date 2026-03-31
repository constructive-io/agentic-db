# contactPhone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactPhone records via agentic-db CLI

## Usage

```bash
agentic-db contact-phone list
agentic-db contact-phone get --id <UUID>
agentic-db contact-phone create --entityId <UUID> --phone <String> --contactId <UUID> [--phoneType <String>] [--isPrimary <Boolean>]
agentic-db contact-phone update --id <UUID> [--entityId <UUID>] [--phone <String>] [--phoneType <String>] [--isPrimary <Boolean>] [--contactId <UUID>]
agentic-db contact-phone delete --id <UUID>
```

## Examples

### List all contactPhone records

```bash
agentic-db contact-phone list
```

### Create a contactPhone

```bash
agentic-db contact-phone create --entityId <UUID> --phone <String> --contactId <UUID> [--phoneType <String>] [--isPrimary <Boolean>]
```

### Get a contactPhone by id

```bash
agentic-db contact-phone get --id <value>
```
