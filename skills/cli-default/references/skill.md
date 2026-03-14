# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Skill records via agent-os CLI

## Usage

```bash
agent-os skill list
agent-os skill get --id <value>
agent-os skill create --entityId <value> --name <value> --embeddingDistance <value> --intentTriggerDistance <value> [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>]
agent-os skill update --id <value> [--entityId <value>] [--name <value>] [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>] [--embeddingDistance <value>] [--intentTriggerDistance <value>]
agent-os skill delete --id <value>
```

## Examples

### List all skill records

```bash
agent-os skill list
```

### Create a skill

```bash
agent-os skill create --entityId <value> --name <value> --embeddingDistance <value> --intentTriggerDistance <value> [--slug <value>] [--description <value>] [--content <value>] [--procedure <value>] [--interface <value>] [--requirements <value>] [--filePath <value>] [--contentHash <value>] [--category <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--intentTrigger <value>]
```

### Get a skill by id

```bash
agent-os skill get --id <value>
```
