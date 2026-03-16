# companyLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyLink records via agentic-db CLI

## Usage

```bash
agentic-db company-link list
agentic-db company-link get --id <value>
agentic-db company-link create --entityId <value> --url <value> --companyId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
agentic-db company-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--companyId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db company-link delete --id <value>
```

## Examples

### List all companyLink records

```bash
agentic-db company-link list
```

### Create a companyLink

```bash
agentic-db company-link create --entityId <value> --url <value> --companyId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
```

### Get a companyLink by id

```bash
agentic-db company-link get --id <value>
```
