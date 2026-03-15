# document

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Document records via agent-db CLI

## Usage

```bash
agent-db document list
agent-db document get --id <value>
agent-db document create --entityId <value> --title <value> --searchTsvRank <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --contentTrgmSimilarity <value> --sourceTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--parentDocumentId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
agent-db document update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--parentDocumentId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--searchTsvRank <value>] [--contentBm25Score <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--sourceTypeTrgmSimilarity <value>] [--abstractTrgmSimilarity <value>] [--overviewTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db document delete --id <value>
```

## Examples

### List all document records

```bash
agent-db document list
```

### Create a document

```bash
agent-db document create --entityId <value> --title <value> --searchTsvRank <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --contentTrgmSimilarity <value> --sourceTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--parentDocumentId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
```

### Get a document by id

```bash
agent-db document get --id <value>
```
