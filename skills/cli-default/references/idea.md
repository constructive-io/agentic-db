# idea

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Idea records via agent-db CLI

## Usage

```bash
agent-db idea list
agent-db idea get --id <value>
agent-db idea create --entityId <value> --content <value> --contentTrgmSimilarity <value> --sourceTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db idea update --id <value> [--entityId <value>] [--content <value>] [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--contentTrgmSimilarity <value>] [--sourceTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db idea delete --id <value>
```

## Examples

### List all idea records

```bash
agent-db idea list
```

### Create a idea

```bash
agent-db idea create --entityId <value> --content <value> --contentTrgmSimilarity <value> --sourceTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a idea by id

```bash
agent-db idea get --id <value>
```
