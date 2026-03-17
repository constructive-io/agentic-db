# idea

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Idea records via agentic-db CLI

## Usage

```bash
agentic-db idea list
agentic-db idea get --id <value>
agentic-db idea create --entityId <value> --content <value> --embeddingTextBm25Score <value> --contentTrgmSimilarity <value> --sourceTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db idea update --id <value> [--entityId <value>] [--content <value>] [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--contentTrgmSimilarity <value>] [--sourceTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db idea delete --id <value>
```

## Examples

### List all idea records

```bash
agentic-db idea list
```

### Create a idea

```bash
agentic-db idea create --entityId <value> --content <value> --embeddingTextBm25Score <value> --contentTrgmSimilarity <value> --sourceTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a idea by id

```bash
agentic-db idea get --id <value>
```
