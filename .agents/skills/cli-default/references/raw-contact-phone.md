# rawContactPhone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawContactPhone records via agentic-db CLI

## Usage

```bash
agentic-db raw-contact-phone list
agentic-db raw-contact-phone get --id <UUID>
agentic-db raw-contact-phone create --entityId <UUID> --rawContactId <UUID> --phone <String> [--phoneType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>] [--ingestedAt <Datetime>]
agentic-db raw-contact-phone update --id <UUID> [--entityId <UUID>] [--rawContactId <UUID>] [--phone <String>] [--phoneType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>] [--ingestedAt <Datetime>]
agentic-db raw-contact-phone delete --id <UUID>
```

## Examples

### List all rawContactPhone records

```bash
agentic-db raw-contact-phone list
```

### Create a rawContactPhone

```bash
agentic-db raw-contact-phone create --entityId <UUID> --rawContactId <UUID> --phone <String> [--phoneType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>] [--ingestedAt <Datetime>]
```

### Get a rawContactPhone by id

```bash
agentic-db raw-contact-phone get --id <value>
```
