# deal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Deal records via agent-db CLI

## Usage

```bash
agent-db deal list
agent-db deal get --id <value>
agent-db deal create --entityId <value> --name <value> --embeddingDistance <value> [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db deal update --id <value> [--entityId <value>] [--name <value>] [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db deal delete --id <value>
```

## Examples

### List all deal records

```bash
agent-db deal list
```

### Create a deal

```bash
agent-db deal create --entityId <value> --name <value> --embeddingDistance <value> [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a deal by id

```bash
agent-db deal get --id <value>
```
