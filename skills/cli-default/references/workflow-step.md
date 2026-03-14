# workflowStep

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for WorkflowStep records via agent-os CLI

## Usage

```bash
agent-os workflow-step list
agent-os workflow-step get --id <value>
agent-os workflow-step create --entityId <value> --workflowId <value> --stepOrder <value> --actionType <value> [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
agent-os workflow-step update --id <value> [--entityId <value>] [--workflowId <value>] [--stepOrder <value>] [--actionType <value>] [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
agent-os workflow-step delete --id <value>
```

## Examples

### List all workflowStep records

```bash
agent-os workflow-step list
```

### Create a workflowStep

```bash
agent-os workflow-step create --entityId <value> --workflowId <value> --stepOrder <value> --actionType <value> [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
```

### Get a workflowStep by id

```bash
agent-os workflow-step get --id <value>
```
