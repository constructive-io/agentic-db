# workflowStep

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for WorkflowStep records via agentic-db CLI

## Usage

```bash
agentic-db workflow-step list
agentic-db workflow-step get --id <UUID>
agentic-db workflow-step create --entityId <UUID> --workflowId <UUID> --stepOrder <Int> --actionType <String> [--actionConfig <JSON>] [--onSuccessStep <Int>] [--onFailureStep <Int>] [--timeoutMs <Int>]
agentic-db workflow-step update --id <UUID> [--entityId <UUID>] [--workflowId <UUID>] [--stepOrder <Int>] [--actionType <String>] [--actionConfig <JSON>] [--onSuccessStep <Int>] [--onFailureStep <Int>] [--timeoutMs <Int>]
agentic-db workflow-step delete --id <UUID>
```

## Examples

### List all workflowStep records

```bash
agentic-db workflow-step list
```

### Create a workflowStep

```bash
agentic-db workflow-step create --entityId <UUID> --workflowId <UUID> --stepOrder <Int> --actionType <String> [--actionConfig <JSON>] [--onSuccessStep <Int>] [--onFailureStep <Int>] [--timeoutMs <Int>]
```

### Get a workflowStep by id

```bash
agentic-db workflow-step get --id <value>
```
