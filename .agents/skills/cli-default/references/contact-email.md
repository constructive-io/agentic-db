# contactEmail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactEmail records via agentic-db CLI

## Usage

```bash
agentic-db contact-email list
agentic-db contact-email get --id <UUID>
agentic-db contact-email create --entityId <UUID> --email <String> --contactId <UUID> [--emailType <String>] [--isPrimary <Boolean>]
agentic-db contact-email update --id <UUID> [--entityId <UUID>] [--email <String>] [--emailType <String>] [--isPrimary <Boolean>] [--contactId <UUID>]
agentic-db contact-email delete --id <UUID>
```

## Examples

### List all contactEmail records

```bash
agentic-db contact-email list
```

### Create a contactEmail

```bash
agentic-db contact-email create --entityId <UUID> --email <String> --contactId <UUID> [--emailType <String>] [--isPrimary <Boolean>]
```

### Get a contactEmail by id

```bash
agentic-db contact-email get --id <value>
```
