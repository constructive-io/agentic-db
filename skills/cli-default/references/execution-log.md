# executionLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ExecutionLog records via agent-db CLI

## Usage

```bash
agent-db execution-log list
agent-db execution-log get --id <value>
agent-db execution-log create --entityId <value> --stepNameTrgmSimilarity <value> --inputTrgmSimilarity <value> --outputTrgmSimilarity <value> --searchScore <value> [--sessionId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>]
agent-db execution-log update --id <value> [--entityId <value>] [--sessionId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>] [--stepNameTrgmSimilarity <value>] [--inputTrgmSimilarity <value>] [--outputTrgmSimilarity <value>] [--searchScore <value>]
agent-db execution-log delete --id <value>
```

## Examples

### List all executionLog records

```bash
agent-db execution-log list
```

### Create a executionLog

```bash
agent-db execution-log create --entityId <value> --stepNameTrgmSimilarity <value> --inputTrgmSimilarity <value> --outputTrgmSimilarity <value> --searchScore <value> [--sessionId <value>] [--stepName <value>] [--input <value>] [--output <value>] [--toolCalls <value>] [--durationMs <value>]
```

### Get a executionLog by id

```bash
agent-db execution-log get --id <value>
```
