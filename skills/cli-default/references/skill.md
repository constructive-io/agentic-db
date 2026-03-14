# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Skill records via agent-db CLI

## Usage

```bash
agent-db skill list
agent-db skill get --id <value>
agent-db skill create --entityId <value> --name <value> --embeddingDistance <value> --intentTriggerDistance <value> [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>]
agent-db skill update --id <value> [--entityId <value>] [--name <value>] [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>] [--embeddingDistance <value>] [--intentTriggerDistance <value>]
agent-db skill delete --id <value>
```

## Examples

### List all skill records

```bash
agent-db skill list
```

### Create a skill

```bash
agent-db skill create --entityId <value> --name <value> --embeddingDistance <value> --intentTriggerDistance <value> [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>]
```

### Get a skill by id

```bash
agent-db skill get --id <value>
```
