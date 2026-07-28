# rawMessageAttachment

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawMessageAttachment records via agentic-db CLI

## Usage

```bash
agentic-db raw-message-attachment list
agentic-db raw-message-attachment list --where.<field>.<op> <value> --orderBy <values>
agentic-db raw-message-attachment list --limit 10 --after <cursor>
agentic-db raw-message-attachment find-first --where.<field>.<op> <value>
agentic-db raw-message-attachment get --id <UUID>
agentic-db raw-message-attachment create --rawMessageId <UUID> [--filename <String>] [--contentType <String>] [--sizeBytes <Int>] [--storageUrl <String>] [--providerAttachmentId <String>]
agentic-db raw-message-attachment update --id <UUID> [--filename <String>] [--contentType <String>] [--sizeBytes <Int>] [--storageUrl <String>] [--providerAttachmentId <String>] [--rawMessageId <UUID>]
agentic-db raw-message-attachment delete --id <UUID>
```

## Examples

### List rawMessageAttachment records

```bash
agentic-db raw-message-attachment list
```

### List rawMessageAttachment records with pagination

```bash
agentic-db raw-message-attachment list --limit 10 --offset 0
```

### List rawMessageAttachment records with cursor pagination

```bash
agentic-db raw-message-attachment list --limit 10 --after <cursor>
```

### Find first matching rawMessageAttachment

```bash
agentic-db raw-message-attachment find-first --where.id.equalTo <value>
```

### List rawMessageAttachment records with field selection

```bash
agentic-db raw-message-attachment list --select id,id
```

### List rawMessageAttachment records with filtering and ordering

```bash
agentic-db raw-message-attachment list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a rawMessageAttachment

```bash
agentic-db raw-message-attachment create --rawMessageId <UUID> [--filename <String>] [--contentType <String>] [--sizeBytes <Int>] [--storageUrl <String>] [--providerAttachmentId <String>]
```

### Get a rawMessageAttachment by id

```bash
agentic-db raw-message-attachment get --id <value>
```
