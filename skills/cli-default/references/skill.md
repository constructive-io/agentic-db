# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Skill records via agent-db CLI

## Usage

```bash
agent-db skill list
agent-db skill get --id <value>
agent-db skill create --entityId <value> --name <value> --nameTrgmSimilarity <value> --slugTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --contentTrgmSimilarity <value> --procedureTrgmSimilarity <value> --filePathTrgmSimilarity <value> --contentHashTrgmSimilarity <value> --categoryTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --intentTriggerVectorDistance <value> --searchScore <value> [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--prerequisites <value>] [--alwaysLoad <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>]
agent-db skill update --id <value> [--entityId <value>] [--name <value>] [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--prerequisites <value>] [--alwaysLoad <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>] [--nameTrgmSimilarity <value>] [--slugTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--procedureTrgmSimilarity <value>] [--filePathTrgmSimilarity <value>] [--contentHashTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--abstractTrgmSimilarity <value>] [--overviewTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--intentTriggerVectorDistance <value>] [--searchScore <value>]
agent-db skill delete --id <value>
```

## Examples

### List all skill records

```bash
agent-db skill list
```

### Create a skill

```bash
agent-db skill create --entityId <value> --name <value> --nameTrgmSimilarity <value> --slugTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --contentTrgmSimilarity <value> --procedureTrgmSimilarity <value> --filePathTrgmSimilarity <value> --contentHashTrgmSimilarity <value> --categoryTrgmSimilarity <value> --abstractTrgmSimilarity <value> --overviewTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --intentTriggerVectorDistance <value> --searchScore <value> [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--prerequisites <value>] [--alwaysLoad <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--abstract <value>] [--overview <value>] [--activeCount <value>] [--lastAccessedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>]
```

### Get a skill by id

```bash
agent-db skill get --id <value>
```
