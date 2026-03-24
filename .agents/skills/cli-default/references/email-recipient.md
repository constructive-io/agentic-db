# emailRecipient

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailRecipient records via agentic-db CLI

## Usage

```bash
agentic-db email-recipient list
agentic-db email-recipient get --id <UUID>
agentic-db email-recipient create --emailId <UUID> --contactId <UUID> --entityId <UUID>
agentic-db email-recipient update --id <UUID> [--emailId <UUID>] [--contactId <UUID>] [--entityId <UUID>]
agentic-db email-recipient delete --id <UUID>
```

## Examples

### List all emailRecipient records

```bash
agentic-db email-recipient list
```

### Create a emailRecipient

```bash
agentic-db email-recipient create --emailId <UUID> --contactId <UUID> --entityId <UUID>
```

### Get a emailRecipient by id

```bash
agentic-db email-recipient get --id <value>
```
