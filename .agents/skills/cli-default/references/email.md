# email

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Email records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `providerMessageIdTrgmSimilarity`, `subjectTrgmSimilarity`, `bodyTextTrgmSimilarity`, `bodyHtmlTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db email list
agentic-db email get --id <UUID>
agentic-db email create --entityId <UUID> --threadId <UUID> --bodyText <String> --emailThreadId <UUID> [--providerMessageId <String>] [--fromContactId <UUID>] [--subject <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--toRecipients <JSON>] [--ccRecipients <JSON>] [--bccRecipients <JSON>] [--isDraft <Boolean>] [--isRead <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db email update --id <UUID> [--entityId <UUID>] [--threadId <UUID>] [--providerMessageId <String>] [--fromContactId <UUID>] [--subject <String>] [--bodyText <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--toRecipients <JSON>] [--ccRecipients <JSON>] [--bccRecipients <JSON>] [--isDraft <Boolean>] [--isRead <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--emailThreadId <UUID>]
agentic-db email delete --id <UUID>
```

## Examples

### List all email records

```bash
agentic-db email list
```

### Create a email

```bash
agentic-db email create --entityId <UUID> --threadId <UUID> --bodyText <String> --emailThreadId <UUID> [--providerMessageId <String>] [--fromContactId <UUID>] [--subject <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--toRecipients <JSON>] [--ccRecipients <JSON>] [--bccRecipients <JSON>] [--isDraft <Boolean>] [--isRead <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a email by id

```bash
agentic-db email get --id <value>
```
