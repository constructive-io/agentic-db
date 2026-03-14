# executionLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ExecutionLog records via agent-os CLI

## Usage

```bash
agent-os execution-log list
agent-os execution-log get --id <value>
agent-os execution-log create --entityId <value> [--sessionId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>]
agent-os execution-log update --id <value> [--entityId <value>] [--sessionId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>]
agent-os execution-log delete --id <value>
```

## Examples

### List all executionLog records

```bash
agent-os execution-log list
```

### Create a executionLog

```bash
agent-os execution-log create --entityId <value> [--sessionId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>]
```

### Get a executionLog by id

```bash
agent-os execution-log get --id <value>
```
