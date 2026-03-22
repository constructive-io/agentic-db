# runtimeSchedule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeSchedule records via agentic-db CLI

## Usage

```bash
agentic-db runtime-schedule list
agentic-db runtime-schedule get --id <UUID>
agentic-db runtime-schedule create --entityId <UUID> --name <String> [--cronExpression <String>] [--nextRunAt <Datetime>] [--lastRunAt <Datetime>] [--isActive <Boolean>] [--config <JSON>] [--timezone <String>]
agentic-db runtime-schedule update --id <UUID> [--entityId <UUID>] [--name <String>] [--cronExpression <String>] [--nextRunAt <Datetime>] [--lastRunAt <Datetime>] [--isActive <Boolean>] [--config <JSON>] [--timezone <String>]
agentic-db runtime-schedule delete --id <UUID>
```

## Examples

### List all runtimeSchedule records

```bash
agentic-db runtime-schedule list
```

### Create a runtimeSchedule

```bash
agentic-db runtime-schedule create --entityId <UUID> --name <String> [--cronExpression <String>] [--nextRunAt <Datetime>] [--lastRunAt <Datetime>] [--isActive <Boolean>] [--config <JSON>] [--timezone <String>]
```

### Get a runtimeSchedule by id

```bash
agentic-db runtime-schedule get --id <value>
```
