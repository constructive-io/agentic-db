# agentic-db-company

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Company records via agentic-db CLI

## Usage

```bash
agentic-db company list
agentic-db company get --id <value>
agentic-db company create --entityId <value> --name <value> --domain <value> --industry <value> --description <value> --test1772427893521 <value> --test1772427893568 <value> --test1772427893598 <value> --embedding <value> --embeddingText <value>
agentic-db company update --id <value> [--entityId <value>] [--name <value>] [--domain <value>] [--industry <value>] [--description <value>] [--test1772427893521 <value>] [--test1772427893568 <value>] [--test1772427893598 <value>] [--embedding <value>] [--embeddingText <value>]
agentic-db company delete --id <value>
```

## Examples

### List all company records

```bash
agentic-db company list
```

### Create a company

```bash
agentic-db company create --entityId "value" --name "value" --domain "value" --industry "value" --description "value" --test1772427893521 "value" --test1772427893568 "value" --test1772427893598 "value" --embedding "value" --embeddingText "value"
```

### Get a company by id

```bash
agentic-db company get --id <value>
```

### Update a company

```bash
agentic-db company update --id <value> --entityId "new-value"
```

### Delete a company

```bash
agentic-db company delete --id <value>
```
