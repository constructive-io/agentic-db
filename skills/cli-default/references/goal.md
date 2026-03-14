# goal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Goal records via agent-db CLI

## Usage

```bash
agent-db goal list
agent-db goal get --id <value>
agent-db goal create --entityId <value> --title <value> --embeddingDistance <value> [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db goal update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db goal delete --id <value>
```

## Examples

### List all goal records

```bash
agent-db goal list
```

### Create a goal

```bash
agent-db goal create --entityId <value> --title <value> --embeddingDistance <value> [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a goal by id

```bash
agent-db goal get --id <value>
```
