# executionLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ExecutionLog records via agentic-db CLI

## Usage

```bash
agentic-db execution-log list
agentic-db execution-log get --id <UUID>
agentic-db execution-log create --entityId <UUID> [--sessionId <UUID>] [--stepName <String>] [--input <String>] [--output <String>] [--toolCalls <JSON>] [--durationMs <Int>]
agentic-db execution-log update --id <UUID> [--entityId <UUID>] [--sessionId <UUID>] [--stepName <String>] [--input <String>] [--output <String>] [--toolCalls <JSON>] [--durationMs <Int>]
agentic-db execution-log delete --id <UUID>
```

## Examples

### List all executionLog records

```bash
agentic-db execution-log list
```

### Create a executionLog

```bash
agentic-db execution-log create --entityId <UUID> [--sessionId <UUID>] [--stepName <String>] [--input <String>] [--output <String>] [--toolCalls <JSON>] [--durationMs <Int>]
```

### Get a executionLog by id

```bash
agentic-db execution-log get --id <value>
```
