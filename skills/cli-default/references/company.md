# company

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Company records via agent-os CLI

## Usage

```bash
agent-os company list
agent-os company get --id <value>
agent-os company create --entityId <value> --name <value> --domain <value> --industry <value> --description <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --embeddingDistance <value>
agent-os company update --id <value> [--entityId <value>] [--name <value>] [--domain <value>] [--industry <value>] [--description <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--embeddingDistance <value>]
agent-os company delete --id <value>
```

## Examples

### List all company records

```bash
agent-os company list
```

### Create a company

```bash
agent-os company create --entityId "value" --name "value" --domain "value" --industry "value" --description "value" --tags "value" --embedding "value" --mainImageId "value" --imageId "value" --embeddingDistance "value"
```

### Get a company by id

```bash
agent-os company get --id <value>
```
