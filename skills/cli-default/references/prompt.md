# prompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Prompt records via agent-os CLI

## Usage

```bash
agent-os prompt list
agent-os prompt get --id <value>
agent-os prompt create --entityId <value> --name <value> --content <value> --embeddingDistance <value> [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os prompt update --id <value> [--entityId <value>] [--name <value>] [--content <value>] [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os prompt delete --id <value>
```

## Examples

### List all prompt records

```bash
agent-os prompt list
```

### Create a prompt

```bash
agent-os prompt create --entityId <value> --name <value> --content <value> --embeddingDistance <value> [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a prompt by id

```bash
agent-os prompt get --id <value>
```
