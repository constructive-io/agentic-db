# rawContactUrl

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawContactUrl records via agentic-db CLI

## Usage

```bash
agentic-db raw-contact-url list
agentic-db raw-contact-url get --id <UUID>
agentic-db raw-contact-url create --entityId <UUID> --url <String> --rawContactId <UUID> [--urlType <String>] [--source <String>] [--confidence <BigFloat>]
agentic-db raw-contact-url update --id <UUID> [--entityId <UUID>] [--url <String>] [--urlType <String>] [--source <String>] [--confidence <BigFloat>] [--rawContactId <UUID>]
agentic-db raw-contact-url delete --id <UUID>
```

## Examples

### List all rawContactUrl records

```bash
agentic-db raw-contact-url list
```

### Create a rawContactUrl

```bash
agentic-db raw-contact-url create --entityId <UUID> --url <String> --rawContactId <UUID> [--urlType <String>] [--source <String>] [--confidence <BigFloat>]
```

### Get a rawContactUrl by id

```bash
agentic-db raw-contact-url get --id <value>
```
