# workflowStep

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for WorkflowStep records via agent-db CLI

## Usage

```bash
agent-db workflow-step list
agent-db workflow-step get --id <value>
agent-db workflow-step create --entityId <value> --workflowId <value> --stepOrder <value> --actionType <value> [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
agent-db workflow-step update --id <value> [--entityId <value>] [--workflowId <value>] [--stepOrder <value>] [--actionType <value>] [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
agent-db workflow-step delete --id <value>
```

## Examples

### List all workflowStep records

```bash
agent-db workflow-step list
```

### Create a workflowStep

```bash
agent-db workflow-step create --entityId <value> --workflowId <value> --stepOrder <value> --actionType <value> [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
```

### Get a workflowStep by id

```bash
agent-db workflow-step get --id <value>
```
