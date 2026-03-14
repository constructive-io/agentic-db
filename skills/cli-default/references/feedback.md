# feedback

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Feedback records via agent-db CLI

## Usage

```bash
agent-db feedback list
agent-db feedback get --id <value>
agent-db feedback create --entityId <value> --targetType <value> --targetId <value> [--rating <value>] [--comment <value>] [--source <value>]
agent-db feedback update --id <value> [--entityId <value>] [--targetType <value>] [--targetId <value>] [--rating <value>] [--comment <value>] [--source <value>]
agent-db feedback delete --id <value>
```

## Examples

### List all feedback records

```bash
agent-db feedback list
```

### Create a feedback

```bash
agent-db feedback create --entityId <value> --targetType <value> --targetId <value> [--rating <value>] [--comment <value>] [--source <value>]
```

### Get a feedback by id

```bash
agent-db feedback get --id <value>
```
