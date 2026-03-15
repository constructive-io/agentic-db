# companyLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyLink records via agent-db CLI

## Usage

```bash
agent-db company-link list
agent-db company-link get --id <value>
agent-db company-link create --entityId <value> --url <value> --companyId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
agent-db company-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--companyId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db company-link delete --id <value>
```

## Examples

### List all companyLink records

```bash
agent-db company-link list
```

### Create a companyLink

```bash
agent-db company-link create --entityId <value> --url <value> --companyId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
```

### Get a companyLink by id

```bash
agent-db company-link get --id <value>
```
