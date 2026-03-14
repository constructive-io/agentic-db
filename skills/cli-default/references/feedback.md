# feedback

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Feedback records via agent-os CLI

## Usage

```bash
agent-os feedback list
agent-os feedback get --id <value>
agent-os feedback create --entityId <value> --targetType <value> --targetId <value> [--rating <value>] [--comment <value>] [--source <value>]
agent-os feedback update --id <value> [--entityId <value>] [--targetType <value>] [--targetId <value>] [--rating <value>] [--comment <value>] [--source <value>]
agent-os feedback delete --id <value>
```

## Examples

### List all feedback records

```bash
agent-os feedback list
```

### Create a feedback

```bash
agent-os feedback create --entityId <value> --targetType <value> --targetId <value> [--rating <value>] [--comment <value>] [--source <value>]
```

### Get a feedback by id

```bash
agent-os feedback get --id <value>
```
