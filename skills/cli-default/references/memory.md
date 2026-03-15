# memory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Memory records via agent-db CLI

## Usage

```bash
agent-db memory list
agent-db memory get --id <value>
agent-db memory create --entityId <value> --content <value> --contentTrgmSimilarity <value> --memoryTypeTrgmSimilarity <value> --memoryCategoryTrgmSimilarity <value> --sourceTrgmSimilarity <value> --relatedEntityTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--memoryType <value>] [--memoryCategory <value>] [--agentId <value>] [--importance <value>] [--verified <value>] [--source <value>] [--relatedEntityType <value>] [--relatedEntityId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db memory update --id <value> [--entityId <value>] [--content <value>] [--memoryType <value>] [--memoryCategory <value>] [--agentId <value>] [--importance <value>] [--verified <value>] [--source <value>] [--relatedEntityType <value>] [--relatedEntityId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--contentTrgmSimilarity <value>] [--memoryTypeTrgmSimilarity <value>] [--memoryCategoryTrgmSimilarity <value>] [--sourceTrgmSimilarity <value>] [--relatedEntityTypeTrgmSimilarity <value>] [--abstractTrgmSimilarity <value>] [--overviewTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db memory delete --id <value>
```

## Examples

### List all memory records

```bash
agent-db memory list
```

### Create a memory

```bash
agent-db memory create --entityId <value> --content <value> --contentTrgmSimilarity <value> --memoryTypeTrgmSimilarity <value> --memoryCategoryTrgmSimilarity <value> --sourceTrgmSimilarity <value> --relatedEntityTypeTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--memoryType <value>] [--memoryCategory <value>] [--agentId <value>] [--importance <value>] [--verified <value>] [--source <value>] [--relatedEntityType <value>] [--relatedEntityId <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a memory by id

```bash
agent-db memory get --id <value>
```
