# chatMessage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ChatMessage records via agentic-db CLI

## Usage

```bash
agentic-db chat-message list
agentic-db chat-message get --id <value>
agentic-db chat-message create --entityId <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --roleTrgmSimilarity <value> --contentTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--chatId <value>] [--threadId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db chat-message update --id <value> [--entityId <value>] [--chatId <value>] [--threadId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embeddingText <value>] [--embedding <value>] [--contentBm25Score <value>] [--embeddingTextBm25Score <value>] [--roleTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db chat-message delete --id <value>
```

## Examples

### List all chatMessage records

```bash
agentic-db chat-message list
```

### Create a chatMessage

```bash
agentic-db chat-message create --entityId <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --roleTrgmSimilarity <value> --contentTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--chatId <value>] [--threadId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a chatMessage by id

```bash
agentic-db chat-message get --id <value>
```
