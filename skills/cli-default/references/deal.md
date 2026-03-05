# deal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Deal records via agent-os CLI

## Usage

```bash
agent-os deal list
agent-os deal get --id <value>
agent-os deal create --entityId <value> --name <value> --stage <value> --value <value> --notes <value> --tags <value> --embedding <value> --embeddingDistance <value>
agent-os deal update --id <value> [--entityId <value>] [--name <value>] [--stage <value>] [--value <value>] [--notes <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os deal delete --id <value>
```

## Examples

### List all deal records

```bash
agent-os deal list
```

### Create a deal

```bash
agent-os deal create --entityId "value" --name "value" --stage "value" --value "value" --notes "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a deal by id

```bash
agent-os deal get --id <value>
```
