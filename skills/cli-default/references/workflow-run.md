# workflowRun

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for WorkflowRun records via agent-os CLI

## Usage

```bash
agent-os workflow-run list
agent-os workflow-run get --id <value>
agent-os workflow-run create --entityId <value> --workflowId <value> [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
agent-os workflow-run update --id <value> [--entityId <value>] [--workflowId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
agent-os workflow-run delete --id <value>
```

## Examples

### List all workflowRun records

```bash
agent-os workflow-run list
```

### Create a workflowRun

```bash
agent-os workflow-run create --entityId <value> --workflowId <value> [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
```

### Get a workflowRun by id

```bash
agent-os workflow-run get --id <value>
```
