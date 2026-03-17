# chunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Chunk records via agentic-db CLI

## Usage

```bash
agentic-db chunk list
agentic-db chunk get --id <value>
agentic-db chunk create --entityId <value> --content <value> --embeddingTextBm25Score <value> --contentTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--fileId <value>] [--repositoryId <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db chunk update --id <value> [--entityId <value>] [--fileId <value>] [--repositoryId <value>] [--content <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--contentTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db chunk delete --id <value>
```

## Examples

### List all chunk records

```bash
agentic-db chunk list
```

### Create a chunk

```bash
agentic-db chunk create --entityId <value> --content <value> --embeddingTextBm25Score <value> --contentTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--fileId <value>] [--repositoryId <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a chunk by id

```bash
agentic-db chunk get --id <value>
```
