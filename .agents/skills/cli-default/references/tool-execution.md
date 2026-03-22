# toolExecution

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ToolExecution records via agentic-db CLI

## Usage

```bash
agentic-db tool-execution list
agentic-db tool-execution get --id <UUID>
agentic-db tool-execution create --entityId <UUID> --toolDefinitionId <UUID> [--messageId <UUID>] [--input <JSON>] [--output <JSON>] [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--error <String>]
agentic-db tool-execution update --id <UUID> [--entityId <UUID>] [--toolDefinitionId <UUID>] [--messageId <UUID>] [--input <JSON>] [--output <JSON>] [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--error <String>]
agentic-db tool-execution delete --id <UUID>
```

## Examples

### List all toolExecution records

```bash
agentic-db tool-execution list
```

### Create a toolExecution

```bash
agentic-db tool-execution create --entityId <UUID> --toolDefinitionId <UUID> [--messageId <UUID>] [--input <JSON>] [--output <JSON>] [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--error <String>]
```

### Get a toolExecution by id

```bash
agentic-db tool-execution get --id <value>
```
