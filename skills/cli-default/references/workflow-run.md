# workflowRun

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for WorkflowRun records via agentic-db CLI

## Usage

```bash
agentic-db workflow-run list
agentic-db workflow-run get --id <value>
agentic-db workflow-run create --entityId <value> --workflowId <value> --statusTrgmSimilarity <value> --errorTrgmSimilarity <value> --searchScore <value> [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
agentic-db workflow-run update --id <value> [--entityId <value>] [--workflowId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>] [--statusTrgmSimilarity <value>] [--errorTrgmSimilarity <value>] [--searchScore <value>]
agentic-db workflow-run delete --id <value>
```

## Examples

### List all workflowRun records

```bash
agentic-db workflow-run list
```

### Create a workflowRun

```bash
agentic-db workflow-run create --entityId <value> --workflowId <value> --statusTrgmSimilarity <value> --errorTrgmSimilarity <value> --searchScore <value> [--status <value>] [--startedAt <value>] [--completedAt <value>] [--input <value>] [--output <value>] [--error <value>]
```

### Get a workflowRun by id

```bash
agentic-db workflow-run get --id <value>
```
