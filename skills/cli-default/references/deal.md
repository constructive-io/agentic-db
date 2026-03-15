# deal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Deal records via agentic-db CLI

## Usage

```bash
agentic-db deal list
agentic-db deal get --id <value>
agentic-db deal create --entityId <value> --name <value> --stage <value> --value <value> --notes <value> --tags <value> --embedding <value> --embeddingDistance <value>
agentic-db deal update --id <value> [--entityId <value>] [--name <value>] [--stage <value>] [--value <value>] [--notes <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db deal delete --id <value>
```

## Examples

### List all deal records

```bash
agentic-db deal list
```

### Create a deal

```bash
agentic-db deal create --entityId "value" --name "value" --stage "value" --value "value" --notes "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a deal by id

```bash
agentic-db deal get --id <value>
```
