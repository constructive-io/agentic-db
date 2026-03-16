# workflowStep

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for WorkflowStep records via agentic-db CLI

## Usage

```bash
agentic-db workflow-step list
agentic-db workflow-step get --id <value>
agentic-db workflow-step create --entityId <value> --workflowId <value> --stepOrder <value> --actionType <value> --actionTypeTrgmSimilarity <value> --searchScore <value> [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
agentic-db workflow-step update --id <value> [--entityId <value>] [--workflowId <value>] [--stepOrder <value>] [--actionType <value>] [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>] [--actionTypeTrgmSimilarity <value>] [--searchScore <value>]
agentic-db workflow-step delete --id <value>
```

## Examples

### List all workflowStep records

```bash
agentic-db workflow-step list
```

### Create a workflowStep

```bash
agentic-db workflow-step create --entityId <value> --workflowId <value> --stepOrder <value> --actionType <value> --actionTypeTrgmSimilarity <value> --searchScore <value> [--actionConfig <value>] [--onSuccessStep <value>] [--onFailureStep <value>] [--timeoutMs <value>]
```

### Get a workflowStep by id

```bash
agentic-db workflow-step get --id <value>
```
