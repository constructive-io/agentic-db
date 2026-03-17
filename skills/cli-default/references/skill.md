# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Skill records via agentic-db CLI

## Usage

```bash
agentic-db skill list
agentic-db skill get --id <value>
agentic-db skill create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --slugTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --contentTrgmSimilarity <value> --procedureTrgmSimilarity <value> --filePathTrgmSimilarity <value> --contentHashTrgmSimilarity <value> --categoryTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --intentTriggerVectorDistance <value> --searchScore <value> [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--prerequisites <value>] [--alwaysLoad <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>]
agentic-db skill update --id <value> [--entityId <value>] [--name <value>] [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--prerequisites <value>] [--alwaysLoad <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--slugTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--procedureTrgmSimilarity <value>] [--filePathTrgmSimilarity <value>] [--contentHashTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--abstractTrgmSimilarity <value>] [--overviewTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--intentTriggerVectorDistance <value>] [--searchScore <value>]
agentic-db skill delete --id <value>
```

## Examples

### List all skill records

```bash
agentic-db skill list
```

### Create a skill

```bash
agentic-db skill create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --slugTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --contentTrgmSimilarity <value> --procedureTrgmSimilarity <value> --filePathTrgmSimilarity <value> --contentHashTrgmSimilarity <value> --categoryTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --intentTriggerVectorDistance <value> --searchScore <value> [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--prerequisites <value>] [--alwaysLoad <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>]
```

### Get a skill by id

```bash
agentic-db skill get --id <value>
```
