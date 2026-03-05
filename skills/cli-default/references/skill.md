# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Skill records via agent-os CLI

## Usage

```bash
agent-os skill list
agent-os skill get --id <value>
agent-os skill create --entityId <value> --name <value> --description <value> --content <value> --isActive <value> --tags <value> --embedding <value> --embeddingDistance <value>
agent-os skill update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--content <value>] [--isActive <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os skill delete --id <value>
```

## Examples

### List all skill records

```bash
agent-os skill list
```

### Create a skill

```bash
agent-os skill create --entityId "value" --name "value" --description "value" --content "value" --isActive "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a skill by id

```bash
agent-os skill get --id <value>
```
