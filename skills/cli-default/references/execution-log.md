# executionLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ExecutionLog records via agentic-db CLI

## Usage

```bash
agentic-db execution-log list
agentic-db execution-log get --id <value>
agentic-db execution-log create --entityId <value> --stepName <value> --input <value> --output <value> --toolCalls <value> --durationMs <value> --sessionId <value>
agentic-db execution-log update --id <value> [--entityId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>] [--sessionId <value>]
agentic-db execution-log delete --id <value>
```

## Examples

### List all executionLog records

```bash
agentic-db execution-log list
```

### Create a executionLog

```bash
agentic-db execution-log create --entityId "value" --stepName "value" --input "value" --output "value" --toolCalls "value" --durationMs "value" --sessionId "value"
```

### Get a executionLog by id

```bash
agentic-db execution-log get --id <value>
```
