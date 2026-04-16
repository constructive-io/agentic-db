# runtimeSchedule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeSchedule records via agentic-db CLI

## Usage

```bash
agentic-db runtime-schedule list
agentic-db runtime-schedule list --where.<field>.<op> <value> --orderBy <values>
agentic-db runtime-schedule list --limit 10 --after <cursor>
agentic-db runtime-schedule find-first --where.<field>.<op> <value>
agentic-db runtime-schedule get --id <UUID>
agentic-db runtime-schedule create --name <String> [--cronExpression <String>] [--nextRunAt <Datetime>] [--lastRunAt <Datetime>] [--isActive <Boolean>] [--config <JSON>] [--timezone <String>]
agentic-db runtime-schedule update --id <UUID> [--name <String>] [--cronExpression <String>] [--nextRunAt <Datetime>] [--lastRunAt <Datetime>] [--isActive <Boolean>] [--config <JSON>] [--timezone <String>]
agentic-db runtime-schedule delete --id <UUID>
```

## Examples

### List runtimeSchedule records

```bash
agentic-db runtime-schedule list
```

### List runtimeSchedule records with pagination

```bash
agentic-db runtime-schedule list --limit 10 --offset 0
```

### List runtimeSchedule records with cursor pagination

```bash
agentic-db runtime-schedule list --limit 10 --after <cursor>
```

### Find first matching runtimeSchedule

```bash
agentic-db runtime-schedule find-first --where.id.equalTo <value>
```

### List runtimeSchedule records with field selection

```bash
agentic-db runtime-schedule list --select id,id
```

### List runtimeSchedule records with filtering and ordering

```bash
agentic-db runtime-schedule list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a runtimeSchedule

```bash
agentic-db runtime-schedule create --name <String> [--cronExpression <String>] [--nextRunAt <Datetime>] [--lastRunAt <Datetime>] [--isActive <Boolean>] [--config <JSON>] [--timezone <String>]
```

### Get a runtimeSchedule by id

```bash
agentic-db runtime-schedule get --id <value>
```
