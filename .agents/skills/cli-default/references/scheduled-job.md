# scheduledJob

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ScheduledJob records via agentic-db CLI

## Usage

```bash
agentic-db scheduled-job list
agentic-db scheduled-job get --id <UUID>
agentic-db scheduled-job create --entityId <UUID> --name <String> --scheduleType <String> --command <String> [--scheduleExpr <String>] [--runAt <Datetime>] [--message <String>] [--agentId <UUID>] [--sessionId <UUID>] [--isActive <Boolean>] [--deleteAfterRun <Boolean>] [--lastRunAt <Datetime>] [--nextRunAt <Datetime>] [--runCount <Int>] [--lastResult <JSON>]
agentic-db scheduled-job update --id <UUID> [--entityId <UUID>] [--name <String>] [--scheduleType <String>] [--scheduleExpr <String>] [--runAt <Datetime>] [--command <String>] [--message <String>] [--agentId <UUID>] [--sessionId <UUID>] [--isActive <Boolean>] [--deleteAfterRun <Boolean>] [--lastRunAt <Datetime>] [--nextRunAt <Datetime>] [--runCount <Int>] [--lastResult <JSON>]
agentic-db scheduled-job delete --id <UUID>
```

## Examples

### List all scheduledJob records

```bash
agentic-db scheduled-job list
```

### Create a scheduledJob

```bash
agentic-db scheduled-job create --entityId <UUID> --name <String> --scheduleType <String> --command <String> [--scheduleExpr <String>] [--runAt <Datetime>] [--message <String>] [--agentId <UUID>] [--sessionId <UUID>] [--isActive <Boolean>] [--deleteAfterRun <Boolean>] [--lastRunAt <Datetime>] [--nextRunAt <Datetime>] [--runCount <Int>] [--lastResult <JSON>]
```

### Get a scheduledJob by id

```bash
agentic-db scheduled-job get --id <value>
```
