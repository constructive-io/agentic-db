# document

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Document records via agentic-db CLI

## Usage

```bash
agentic-db document list
agentic-db document get --id <value>
agentic-db document create --entityId <value> --title <value> --searchTsvRank <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --contentTrgmSimilarity <value> --sourceTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--parentDocumentId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
agentic-db document update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--parentDocumentId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--searchTsvRank <value>] [--contentBm25Score <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--sourceTypeTrgmSimilarity <value>] [--abstractTrgmSimilarity <value>] [--overviewTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db document delete --id <value>
```

## Examples

### List all document records

```bash
agentic-db document list
```

### Create a document

```bash
agentic-db document create --entityId <value> --title <value> --searchTsvRank <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --contentTrgmSimilarity <value> --sourceTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--parentDocumentId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
```

### Get a document by id

```bash
agentic-db document get --id <value>
```
