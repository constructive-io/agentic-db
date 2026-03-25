# rawContactEmail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawContactEmail records via agentic-db CLI

## Usage

```bash
agentic-db raw-contact-email list
agentic-db raw-contact-email get --id <UUID>
agentic-db raw-contact-email create --entityId <UUID> --email <String> --rawContactId <UUID> [--emailType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>]
agentic-db raw-contact-email update --id <UUID> [--entityId <UUID>] [--email <String>] [--emailType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>] [--rawContactId <UUID>]
agentic-db raw-contact-email delete --id <UUID>
```

## Examples

### List all rawContactEmail records

```bash
agentic-db raw-contact-email list
```

### Create a rawContactEmail

```bash
agentic-db raw-contact-email create --entityId <UUID> --email <String> --rawContactId <UUID> [--emailType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>]
```

### Get a rawContactEmail by id

```bash
agentic-db raw-contact-email get --id <value>
```
