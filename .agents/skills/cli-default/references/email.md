# email

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Email records via agentic-db CLI

## Usage

```bash
agentic-db email list
agentic-db email get --id <UUID>
agentic-db email create --entityId <UUID> --emailThreadId <UUID> [--providerMessageId <String>] [--fromContactId <UUID>] [--to <JSON>] [--cc <JSON>] [--bcc <JSON>] [--subject <String>] [--bodyText <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db email update --id <UUID> [--entityId <UUID>] [--providerMessageId <String>] [--fromContactId <UUID>] [--to <JSON>] [--cc <JSON>] [--bcc <JSON>] [--subject <String>] [--bodyText <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--emailThreadId <UUID>]
agentic-db email delete --id <UUID>
```

## Examples

### List all email records

```bash
agentic-db email list
```

### Create a email

```bash
agentic-db email create --entityId <UUID> --emailThreadId <UUID> [--providerMessageId <String>] [--fromContactId <UUID>] [--to <JSON>] [--cc <JSON>] [--bcc <JSON>] [--subject <String>] [--bodyText <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a email by id

```bash
agentic-db email get --id <value>
```
