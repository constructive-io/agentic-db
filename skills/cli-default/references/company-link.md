# companyLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyLink records via agent-os CLI

## Usage

```bash
agent-os company-link list
agent-os company-link get --id <value>
agent-os company-link create --entityId <value> --url <value> --companyId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
agent-os company-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--companyId <value>] [--embeddingDistance <value>]
agent-os company-link delete --id <value>
```

## Examples

### List all companyLink records

```bash
agent-os company-link list
```

### Create a companyLink

```bash
agent-os company-link create --entityId <value> --url <value> --companyId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
```

### Get a companyLink by id

```bash
agent-os company-link get --id <value>
```
