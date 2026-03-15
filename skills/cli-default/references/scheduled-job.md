# scheduledJob

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ScheduledJob records via agent-db CLI

## Usage

```bash
agent-db scheduled-job list
agent-db scheduled-job get --id <value>
agent-db scheduled-job create --entityId <value> --name <value> --scheduleType <value> --command <value> --nameTrgmSimilarity <value> --scheduleTypeTrgmSimilarity <value> --scheduleExprTrgmSimilarity <value> --commandTrgmSimilarity <value> --messageTrgmSimilarity <value> --searchScore <value> [--scheduleExpr <value>] [--runAt <value>] [--message <value>] [--agentId <value>] [--sessionId <value>] [--isActive <value>] [--deleteAfterRun <value>] [--lastRunAt <value>] [--nextRunAt <value>] [--runCount <value>] [--lastResult <value>]
agent-db scheduled-job update --id <value> [--entityId <value>] [--name <value>] [--scheduleType <value>] [--scheduleExpr <value>] [--runAt <value>] [--command <value>] [--message <value>] [--agentId <value>] [--sessionId <value>] [--isActive <value>] [--deleteAfterRun <value>] [--lastRunAt <value>] [--nextRunAt <value>] [--runCount <value>] [--lastResult <value>] [--nameTrgmSimilarity <value>] [--scheduleTypeTrgmSimilarity <value>] [--scheduleExprTrgmSimilarity <value>] [--commandTrgmSimilarity <value>] [--messageTrgmSimilarity <value>] [--searchScore <value>]
agent-db scheduled-job delete --id <value>
```

## Examples

### List all scheduledJob records

```bash
agent-db scheduled-job list
```

### Create a scheduledJob

```bash
agent-db scheduled-job create --entityId <value> --name <value> --scheduleType <value> --command <value> --nameTrgmSimilarity <value> --scheduleTypeTrgmSimilarity <value> --scheduleExprTrgmSimilarity <value> --commandTrgmSimilarity <value> --messageTrgmSimilarity <value> --searchScore <value> [--scheduleExpr <value>] [--runAt <value>] [--message <value>] [--agentId <value>] [--sessionId <value>] [--isActive <value>] [--deleteAfterRun <value>] [--lastRunAt <value>] [--nextRunAt <value>] [--runCount <value>] [--lastResult <value>]
```

### Get a scheduledJob by id

```bash
agent-db scheduled-job get --id <value>
```
