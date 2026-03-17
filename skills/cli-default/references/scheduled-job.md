# scheduledJob

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ScheduledJob records via agentic-db CLI

## Usage

```bash
agentic-db scheduled-job list
agentic-db scheduled-job get --id <value>
agentic-db scheduled-job create --entityId <value> --name <value> --scheduleType <value> --command <value> --nameTrgmSimilarity <value> --scheduleTypeTrgmSimilarity <value> --scheduleExprTrgmSimilarity <value> --commandTrgmSimilarity <value> --messageTrgmSimilarity <value> --searchScore <value> [--scheduleExpr <value>] [--runAt <value>] [--message <value>] [--agentId <value>] [--sessionId <value>] [--isActive <value>] [--deleteAfterRun <value>] [--lastRunAt <value>] [--nextRunAt <value>] [--runCount <value>] [--lastResult <value>]
agentic-db scheduled-job update --id <value> [--entityId <value>] [--name <value>] [--scheduleType <value>] [--scheduleExpr <value>] [--runAt <value>] [--command <value>] [--message <value>] [--agentId <value>] [--sessionId <value>] [--isActive <value>] [--deleteAfterRun <value>] [--lastRunAt <value>] [--nextRunAt <value>] [--runCount <value>] [--lastResult <value>] [--nameTrgmSimilarity <value>] [--scheduleTypeTrgmSimilarity <value>] [--scheduleExprTrgmSimilarity <value>] [--commandTrgmSimilarity <value>] [--messageTrgmSimilarity <value>] [--searchScore <value>]
agentic-db scheduled-job delete --id <value>
```

## Examples

### List all scheduledJob records

```bash
agentic-db scheduled-job list
```

### Create a scheduledJob

```bash
agentic-db scheduled-job create --entityId <value> --name <value> --scheduleType <value> --command <value> --nameTrgmSimilarity <value> --scheduleTypeTrgmSimilarity <value> --scheduleExprTrgmSimilarity <value> --commandTrgmSimilarity <value> --messageTrgmSimilarity <value> --searchScore <value> [--scheduleExpr <value>] [--runAt <value>] [--message <value>] [--agentId <value>] [--sessionId <value>] [--isActive <value>] [--deleteAfterRun <value>] [--lastRunAt <value>] [--nextRunAt <value>] [--runCount <value>] [--lastResult <value>]
```

### Get a scheduledJob by id

```bash
agentic-db scheduled-job get --id <value>
```
