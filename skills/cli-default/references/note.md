# note

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Note records via agent-db CLI

## Usage

```bash
agent-db note list
agent-db note get --id <value>
agent-db note create --entityId <value> --content <value> --embeddingDistance <value> [--notableType <value>] [--notableId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db note update --id <value> [--entityId <value>] [--content <value>] [--notableType <value>] [--notableId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db note delete --id <value>
```

## Examples

### List all note records

```bash
agent-db note list
```

### Create a note

```bash
agent-db note create --entityId <value> --content <value> --embeddingDistance <value> [--notableType <value>] [--notableId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a note by id

```bash
agent-db note get --id <value>
```
