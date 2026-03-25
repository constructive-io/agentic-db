# rawContactPhone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawContactPhone records via agentic-db CLI

## Usage

```bash
agentic-db raw-contact-phone list
agentic-db raw-contact-phone get --id <UUID>
agentic-db raw-contact-phone create --entityId <UUID> --phone <String> --rawContactId <UUID> [--phoneType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>]
agentic-db raw-contact-phone update --id <UUID> [--entityId <UUID>] [--phone <String>] [--phoneType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>] [--rawContactId <UUID>]
agentic-db raw-contact-phone delete --id <UUID>
```

## Examples

### List all rawContactPhone records

```bash
agentic-db raw-contact-phone list
```

### Create a rawContactPhone

```bash
agentic-db raw-contact-phone create --entityId <UUID> --phone <String> --rawContactId <UUID> [--phoneType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>]
```

### Get a rawContactPhone by id

```bash
agentic-db raw-contact-phone get --id <value>
```
