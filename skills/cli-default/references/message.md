# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Message records via agent-db CLI

## Usage

```bash
agent-db message list
agent-db message get --id <value>
agent-db message create --entityId <value> --bodyTextBm25Score <value> --embeddingTextBm25Score <value> --threadIdTrgmSimilarity <value> --remoteIdTrgmSimilarity <value> --fromAddressTrgmSimilarity <value> --subjectTrgmSimilarity <value> --bodyTextTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db message update --id <value> [--entityId <value>] [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--bodyTextBm25Score <value>] [--embeddingTextBm25Score <value>] [--threadIdTrgmSimilarity <value>] [--remoteIdTrgmSimilarity <value>] [--fromAddressTrgmSimilarity <value>] [--subjectTrgmSimilarity <value>] [--bodyTextTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db message delete --id <value>
```

## Examples

### List all message records

```bash
agent-db message list
```

### Create a message

```bash
agent-db message create --entityId <value> --bodyTextBm25Score <value> --embeddingTextBm25Score <value> --threadIdTrgmSimilarity <value> --remoteIdTrgmSimilarity <value> --fromAddressTrgmSimilarity <value> --subjectTrgmSimilarity <value> --bodyTextTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a message by id

```bash
agent-db message get --id <value>
```
