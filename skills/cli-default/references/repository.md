# repository

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Repository records via agent-db CLI

## Usage

```bash
agent-db repository list
agent-db repository get --id <value>
agent-db repository create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --urlTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --defaultBranchTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db repository update --id <value> [--entityId <value>] [--name <value>] [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--defaultBranchTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db repository delete --id <value>
```

## Examples

### List all repository records

```bash
agent-db repository list
```

### Create a repository

```bash
agent-db repository create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --urlTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --defaultBranchTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a repository by id

```bash
agent-db repository get --id <value>
```
