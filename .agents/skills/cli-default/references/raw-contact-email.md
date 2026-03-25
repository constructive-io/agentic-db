# rawContactEmail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawContactEmail records via agentic-db CLI

## Usage

```bash
agentic-db raw-contact-email list
agentic-db raw-contact-email get --id <UUID>
agentic-db raw-contact-email create --entityId <UUID> --rawContactId <UUID> --email <String> [--emailType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>] [--ingestedAt <Datetime>]
agentic-db raw-contact-email update --id <UUID> [--entityId <UUID>] [--rawContactId <UUID>] [--email <String>] [--emailType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>] [--ingestedAt <Datetime>]
agentic-db raw-contact-email delete --id <UUID>
```

## Examples

### List all rawContactEmail records

```bash
agentic-db raw-contact-email list
```

### Create a rawContactEmail

```bash
agentic-db raw-contact-email create --entityId <UUID> --rawContactId <UUID> --email <String> [--emailType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>] [--ingestedAt <Datetime>]
```

### Get a rawContactEmail by id

```bash
agentic-db raw-contact-email get --id <value>
```
