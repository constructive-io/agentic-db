# company

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Company records via agentic-db CLI

## Usage

```bash
agentic-db company list
agentic-db company get --id <value>
agentic-db company create --entityId <value> --name <value> --domain <value> --industry <value> --description <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --embeddingDistance <value>
agentic-db company update --id <value> [--entityId <value>] [--name <value>] [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--embeddingDistance <value>]
agentic-db company delete --id <value>
```

## Examples

### List all company records

```bash
agentic-db company list
```

### Create a company

```bash
agentic-db company create --entityId "value" --name "value" --domain "value" --industry "value" --description "value" --tags "value" --embedding "value" --mainImageId "value" --imageId "value" --embeddingDistance "value"
```

### Get a company by id

```bash
agentic-db company get --id <value>
```
