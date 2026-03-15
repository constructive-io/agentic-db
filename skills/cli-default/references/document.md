# document

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Document records via agentic-db CLI

## Usage

```bash
agentic-db document list
agentic-db document get --id <value>
agentic-db document create --entityId <value> --title <value> --url <value> --content <value> --sourceType <value> --tags <value> --embedding <value> --embeddingDistance <value>
agentic-db document update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--content <value>] [--sourceType <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db document delete --id <value>
```

## Examples

### List all document records

```bash
agentic-db document list
```

### Create a document

```bash
agentic-db document create --entityId "value" --title "value" --url "value" --content "value" --sourceType "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a document by id

```bash
agentic-db document get --id <value>
```
