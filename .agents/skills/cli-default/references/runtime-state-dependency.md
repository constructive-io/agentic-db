# runtimeStateDependency

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeStateDependency records via agentic-db CLI

## Usage

```bash
agentic-db runtime-state-dependency list
agentic-db runtime-state-dependency get --id <UUID>
agentic-db runtime-state-dependency create --stateId <UUID> --dependencyId <UUID> --entityId <UUID>
agentic-db runtime-state-dependency update --id <UUID> [--stateId <UUID>] [--dependencyId <UUID>] [--entityId <UUID>]
agentic-db runtime-state-dependency delete --id <UUID>
```

## Examples

### List all runtimeStateDependency records

```bash
agentic-db runtime-state-dependency list
```

### Create a runtimeStateDependency

```bash
agentic-db runtime-state-dependency create --stateId <UUID> --dependencyId <UUID> --entityId <UUID>
```

### Get a runtimeStateDependency by id

```bash
agentic-db runtime-state-dependency get --id <value>
```
