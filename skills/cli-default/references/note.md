# note

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Note records via agentic-db CLI

## Usage

```bash
agentic-db note list
agentic-db note get --id <value>
agentic-db note create --entityId <value> --content <value> --tags <value> --embedding <value> --contactId <value> --embeddingDistance <value>
agentic-db note update --id <value> [--entityId <value>] [--content <value>] [--tags <value>] [--embedding <value>] [--contactId <value>] [--embeddingDistance <value>]
agentic-db note delete --id <value>
```

## Examples

### List all note records

```bash
agentic-db note list
```

### Create a note

```bash
agentic-db note create --entityId "value" --content "value" --tags "value" --embedding "value" --contactId "value" --embeddingDistance "value"
```

### Get a note by id

```bash
agentic-db note get --id <value>
```
