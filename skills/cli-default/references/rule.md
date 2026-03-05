# rule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Rule records via agent-os CLI

## Usage

```bash
agent-os rule list
agent-os rule get --id <value>
agent-os rule create --entityId <value> --title <value> --content <value> --kind <value> --isActive <value> --tags <value> --embedding <value> --embeddingDistance <value>
agent-os rule update --id <value> [--entityId <value>] [--title <value>] [--content <value>] [--kind <value>] [--isActive <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os rule delete --id <value>
```

## Examples

### List all rule records

```bash
agent-os rule list
```

### Create a rule

```bash
agent-os rule create --entityId "value" --title "value" --content "value" --kind "value" --isActive "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a rule by id

```bash
agent-os rule get --id <value>
```
