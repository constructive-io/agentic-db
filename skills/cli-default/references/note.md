# note

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Note records via agentic-db CLI

## Usage

```bash
agentic-db note list
agentic-db note get --id <value>
agentic-db note create --entityId <value> --content <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --contentTrgmSimilarity <value> --notableTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--notableType <value>] [--notableId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db note update --id <value> [--entityId <value>] [--content <value>] [--notableType <value>] [--notableId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--contentBm25Score <value>] [--embeddingTextBm25Score <value>] [--contentTrgmSimilarity <value>] [--notableTypeTrgmSimilarity <value>] [--abstractTrgmSimilarity <value>] [--overviewTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db note delete --id <value>
```

## Examples

### List all note records

```bash
agentic-db note list
```

### Create a note

```bash
agentic-db note create --entityId <value> --content <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --contentTrgmSimilarity <value> --notableTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--notableType <value>] [--notableId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a note by id

```bash
agentic-db note get --id <value>
```
