# runtimeMetric

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeMetric records via agentic-db CLI

## Usage

```bash
agentic-db runtime-metric list
agentic-db runtime-metric get --id <UUID>
agentic-db runtime-metric create --entityId <UUID> --runtimeStateId <UUID> --metricName <String> --metricValue <BigFloat> [--unit <String>] [--meta <JSON>]
agentic-db runtime-metric update --id <UUID> [--entityId <UUID>] [--runtimeStateId <UUID>] [--metricName <String>] [--metricValue <BigFloat>] [--unit <String>] [--meta <JSON>]
agentic-db runtime-metric delete --id <UUID>
```

## Examples

### List all runtimeMetric records

```bash
agentic-db runtime-metric list
```

### Create a runtimeMetric

```bash
agentic-db runtime-metric create --entityId <UUID> --runtimeStateId <UUID> --metricName <String> --metricValue <BigFloat> [--unit <String>] [--meta <JSON>]
```

### Get a runtimeMetric by id

```bash
agentic-db runtime-metric get --id <value>
```
