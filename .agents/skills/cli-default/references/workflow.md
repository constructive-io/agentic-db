# workflow

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Workflow records via agentic-db CLI

## Usage

```bash
agentic-db workflow list
agentic-db workflow get --id <UUID>
agentic-db workflow create --entityId <UUID> --name <String> [--description <String>] [--triggerType <String>] [--triggerConfig <JSON>] [--isActive <Boolean>] [--tags <String>]
agentic-db workflow update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--triggerType <String>] [--triggerConfig <JSON>] [--isActive <Boolean>] [--tags <String>]
agentic-db workflow delete --id <UUID>
```

## Examples

### List all workflow records

```bash
agentic-db workflow list
```

### Create a workflow

```bash
agentic-db workflow create --entityId <UUID> --name <String> [--description <String>] [--triggerType <String>] [--triggerConfig <JSON>] [--isActive <Boolean>] [--tags <String>]
```

### Get a workflow by id

```bash
agentic-db workflow get --id <value>
```
