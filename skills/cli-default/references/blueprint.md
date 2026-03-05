# blueprint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Blueprint records via agent-os CLI

## Usage

```bash
agent-os blueprint list
agent-os blueprint get --id <value>
agent-os blueprint create --entityId <value> --title <value> --steps <value> --triggerConditions <value> --embedding <value> --embeddingDistance <value>
agent-os blueprint update --id <value> [--entityId <value>] [--title <value>] [--steps <value>] [--triggerConditions <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os blueprint delete --id <value>
```

## Examples

### List all blueprint records

```bash
agent-os blueprint list
```

### Create a blueprint

```bash
agent-os blueprint create --entityId "value" --title "value" --steps "value" --triggerConditions "value" --embedding "value" --embeddingDistance "value"
```

### Get a blueprint by id

```bash
agent-os blueprint get --id <value>
```
