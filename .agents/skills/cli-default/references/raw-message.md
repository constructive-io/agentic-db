# rawMessage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawMessage records via agentic-db CLI

## Usage

```bash
agentic-db raw-message list
agentic-db raw-message list --where.<field>.<op> <value> --orderBy <values>
agentic-db raw-message list --limit 10 --after <cursor>
agentic-db raw-message find-first --where.<field>.<op> <value>
agentic-db raw-message get --id <UUID>
agentic-db raw-message create --provider <String> [--externalId <String>] [--externalThreadId <String>] [--senderHandle <String>] [--senderDisplayName <String>] [--recipients <JSON>] [--subject <String>] [--bodyText <String>] [--sentAt <Datetime>] [--rawData <JSON>] [--triageStatus <String>] [--triageScore <BigFloat>] [--triageNotes <String>] [--labels <String>] [--ingestedAt <Datetime>] [--senderContactId <UUID>] [--promotedEmailId <UUID>] [--promotedConversationId <UUID>]
agentic-db raw-message update --id <UUID> [--provider <String>] [--externalId <String>] [--externalThreadId <String>] [--senderHandle <String>] [--senderDisplayName <String>] [--recipients <JSON>] [--subject <String>] [--bodyText <String>] [--sentAt <Datetime>] [--rawData <JSON>] [--triageStatus <String>] [--triageScore <BigFloat>] [--triageNotes <String>] [--labels <String>] [--ingestedAt <Datetime>] [--senderContactId <UUID>] [--promotedEmailId <UUID>] [--promotedConversationId <UUID>]
agentic-db raw-message delete --id <UUID>
```

## Examples

### List rawMessage records

```bash
agentic-db raw-message list
```

### List rawMessage records with pagination

```bash
agentic-db raw-message list --limit 10 --offset 0
```

### List rawMessage records with cursor pagination

```bash
agentic-db raw-message list --limit 10 --after <cursor>
```

### Find first matching rawMessage

```bash
agentic-db raw-message find-first --where.id.equalTo <value>
```

### List rawMessage records with field selection

```bash
agentic-db raw-message list --select id,id
```

### List rawMessage records with filtering and ordering

```bash
agentic-db raw-message list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a rawMessage

```bash
agentic-db raw-message create --provider <String> [--externalId <String>] [--externalThreadId <String>] [--senderHandle <String>] [--senderDisplayName <String>] [--recipients <JSON>] [--subject <String>] [--bodyText <String>] [--sentAt <Datetime>] [--rawData <JSON>] [--triageStatus <String>] [--triageScore <BigFloat>] [--triageNotes <String>] [--labels <String>] [--ingestedAt <Datetime>] [--senderContactId <UUID>] [--promotedEmailId <UUID>] [--promotedConversationId <UUID>]
```

### Get a rawMessage by id

```bash
agentic-db raw-message get --id <value>
```
