# emailAttachment

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailAttachment records via agentic-db CLI

## Usage

```bash
agentic-db email-attachment list
agentic-db email-attachment list --where.<field>.<op> <value> --orderBy <values>
agentic-db email-attachment list --limit 10 --after <cursor>
agentic-db email-attachment find-first --where.<field>.<op> <value>
agentic-db email-attachment get --id <UUID>
agentic-db email-attachment create --filename <String> --emailId <UUID> [--contentType <String>] [--sizeBytes <Int>] [--storageUrl <String>] [--providerAttachmentId <String>]
agentic-db email-attachment update --id <UUID> [--filename <String>] [--contentType <String>] [--sizeBytes <Int>] [--storageUrl <String>] [--providerAttachmentId <String>] [--emailId <UUID>]
agentic-db email-attachment delete --id <UUID>
```

## Examples

### List emailAttachment records

```bash
agentic-db email-attachment list
```

### List emailAttachment records with pagination

```bash
agentic-db email-attachment list --limit 10 --offset 0
```

### List emailAttachment records with cursor pagination

```bash
agentic-db email-attachment list --limit 10 --after <cursor>
```

### Find first matching emailAttachment

```bash
agentic-db email-attachment find-first --where.id.equalTo <value>
```

### List emailAttachment records with field selection

```bash
agentic-db email-attachment list --select id,id
```

### List emailAttachment records with filtering and ordering

```bash
agentic-db email-attachment list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a emailAttachment

```bash
agentic-db email-attachment create --filename <String> --emailId <UUID> [--contentType <String>] [--sizeBytes <Int>] [--storageUrl <String>] [--providerAttachmentId <String>]
```

### Get a emailAttachment by id

```bash
agentic-db email-attachment get --id <value>
```
