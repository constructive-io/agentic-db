# workflowRun

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for WorkflowRun records via agent-db CLI

## Usage

```bash
agent-db workflow-run list
agent-db workflow-run get --id <value>
agent-db workflow-run create --entityId <value> --workflowId <value> [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
agent-db workflow-run update --id <value> [--entityId <value>] [--workflowId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
agent-db workflow-run delete --id <value>
```

## Examples

### List all workflowRun records

```bash
agent-db workflow-run list
```

### Create a workflowRun

```bash
agent-db workflow-run create --entityId <value> --workflowId <value> [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
```

### Get a workflowRun by id

```bash
agent-db workflow-run get --id <value>
```
