# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Message records via agentic-db CLI

## Usage

```bash
agentic-db message list
agentic-db message get --id <value>
agentic-db message create --entityId <value> --bodyTextBm25Score <value> --embeddingTextBm25Score <value> --threadIdTrgmSimilarity <value> --remoteIdTrgmSimilarity <value> --fromAddressTrgmSimilarity <value> --subjectTrgmSimilarity <value> --bodyTextTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db message update --id <value> [--entityId <value>] [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--bodyTextBm25Score <value>] [--embeddingTextBm25Score <value>] [--threadIdTrgmSimilarity <value>] [--remoteIdTrgmSimilarity <value>] [--fromAddressTrgmSimilarity <value>] [--subjectTrgmSimilarity <value>] [--bodyTextTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db message delete --id <value>
```

## Examples

### List all message records

```bash
agentic-db message list
```

### Create a message

```bash
agentic-db message create --entityId <value> --bodyTextBm25Score <value> --embeddingTextBm25Score <value> --threadIdTrgmSimilarity <value> --remoteIdTrgmSimilarity <value> --fromAddressTrgmSimilarity <value> --subjectTrgmSimilarity <value> --bodyTextTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a message by id

```bash
agentic-db message get --id <value>
```
