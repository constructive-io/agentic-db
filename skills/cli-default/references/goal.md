# goal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Goal records via agent-os CLI

## Usage

```bash
agent-os goal list
agent-os goal get --id <value>
agent-os goal create --entityId <value> --title <value> --embeddingDistance <value> [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os goal update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os goal delete --id <value>
```

## Examples

### List all goal records

```bash
agent-os goal list
```

### Create a goal

```bash
agent-os goal create --entityId <value> --title <value> --embeddingDistance <value> [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a goal by id

```bash
agent-os goal get --id <value>
```
