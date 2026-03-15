# company

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Company records via agent-db CLI

## Usage

```bash
agent-db company list
agent-db company get --id <value>
agent-db company create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --domainTrgmSimilarity <value> --industryTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
agent-db company update --id <value> [--entityId <value>] [--name <value>] [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--domainTrgmSimilarity <value>] [--industryTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db company delete --id <value>
```

## Examples

### List all company records

```bash
agent-db company list
```

### Create a company

```bash
agent-db company create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --domainTrgmSimilarity <value> --industryTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
```

### Get a company by id

```bash
agent-db company get --id <value>
```
