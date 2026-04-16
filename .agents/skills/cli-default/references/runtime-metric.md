# runtimeMetric

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeMetric records via agentic-db CLI

## Usage

```bash
agentic-db runtime-metric list
agentic-db runtime-metric list --where.<field>.<op> <value> --orderBy <values>
agentic-db runtime-metric list --limit 10 --after <cursor>
agentic-db runtime-metric find-first --where.<field>.<op> <value>
agentic-db runtime-metric get --id <UUID>
agentic-db runtime-metric create --runtimeStateId <UUID> --metricName <String> --metricValue <BigFloat> [--unit <String>] [--meta <JSON>]
agentic-db runtime-metric update --id <UUID> [--runtimeStateId <UUID>] [--metricName <String>] [--metricValue <BigFloat>] [--unit <String>] [--meta <JSON>]
agentic-db runtime-metric delete --id <UUID>
```

## Examples

### List runtimeMetric records

```bash
agentic-db runtime-metric list
```

### List runtimeMetric records with pagination

```bash
agentic-db runtime-metric list --limit 10 --offset 0
```

### List runtimeMetric records with cursor pagination

```bash
agentic-db runtime-metric list --limit 10 --after <cursor>
```

### Find first matching runtimeMetric

```bash
agentic-db runtime-metric find-first --where.id.equalTo <value>
```

### List runtimeMetric records with field selection

```bash
agentic-db runtime-metric list --select id,id
```

### List runtimeMetric records with filtering and ordering

```bash
agentic-db runtime-metric list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a runtimeMetric

```bash
agentic-db runtime-metric create --runtimeStateId <UUID> --metricName <String> --metricValue <BigFloat> [--unit <String>] [--meta <JSON>]
```

### Get a runtimeMetric by id

```bash
agentic-db runtime-metric get --id <value>
```
