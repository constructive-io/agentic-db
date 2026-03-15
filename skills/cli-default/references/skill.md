# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Skill records via agentic-db CLI

## Usage

```bash
agentic-db skill list
agentic-db skill get --id <value>
agentic-db skill create --entityId <value> --name <value> --description <value> --content <value> --isActive <value> --tags <value> --embedding <value> --embeddingDistance <value>
agentic-db skill update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--content <value>] [--isActive <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db skill delete --id <value>
```

## Examples

### List all skill records

```bash
agentic-db skill list
```

### Create a skill

```bash
agentic-db skill create --entityId "value" --name "value" --description "value" --content "value" --isActive "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a skill by id

```bash
agentic-db skill get --id <value>
```
