# rule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Rule records via agentic-db CLI

## Usage

```bash
agentic-db rule list
agentic-db rule get --id <value>
agentic-db rule create --entityId <value> --title <value> --content <value> --kind <value> --isActive <value> --tags <value> --embedding <value> --embeddingDistance <value>
agentic-db rule update --id <value> [--entityId <value>] [--title <value>] [--content <value>] [--kind <value>] [--isActive <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db rule delete --id <value>
```

## Examples

### List all rule records

```bash
agentic-db rule list
```

### Create a rule

```bash
agentic-db rule create --entityId "value" --title "value" --content "value" --kind "value" --isActive "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a rule by id

```bash
agentic-db rule get --id <value>
```
