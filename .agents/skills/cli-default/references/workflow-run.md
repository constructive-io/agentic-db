# workflowRun

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for WorkflowRun records via agentic-db CLI

## Usage

```bash
agentic-db workflow-run list
agentic-db workflow-run get --id <UUID>
agentic-db workflow-run create --entityId <UUID> --workflowId <UUID> [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--input <JSON>] [--output <JSON>] [--error <String>]
agentic-db workflow-run update --id <UUID> [--entityId <UUID>] [--workflowId <UUID>] [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--input <JSON>] [--output <JSON>] [--error <String>]
agentic-db workflow-run delete --id <UUID>
```

## Examples

### List all workflowRun records

```bash
agentic-db workflow-run list
```

### Create a workflowRun

```bash
agentic-db workflow-run create --entityId <UUID> --workflowId <UUID> [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--input <JSON>] [--output <JSON>] [--error <String>]
```

### Get a workflowRun by id

```bash
agentic-db workflow-run get --id <value>
```
