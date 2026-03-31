# runtimeStateDependency

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeStateDependency records via agentic-db CLI

## Usage

```bash
agentic-db runtime-state-dependency list
agentic-db runtime-state-dependency list --where.<field>.<op> <value> --orderBy <values>
agentic-db runtime-state-dependency list --limit 10 --after <cursor>
agentic-db runtime-state-dependency find-first --where.<field>.<op> <value>
agentic-db runtime-state-dependency get --id <UUID>
agentic-db runtime-state-dependency create --stateId <UUID> --dependencyId <UUID> --entityId <UUID>
agentic-db runtime-state-dependency update --id <UUID> [--stateId <UUID>] [--dependencyId <UUID>] [--entityId <UUID>]
agentic-db runtime-state-dependency delete --id <UUID>
```

## Examples

### List runtimeStateDependency records

```bash
agentic-db runtime-state-dependency list
```

### List runtimeStateDependency records with pagination

```bash
agentic-db runtime-state-dependency list --limit 10 --offset 0
```

### List runtimeStateDependency records with cursor pagination

```bash
agentic-db runtime-state-dependency list --limit 10 --after <cursor>
```

### Find first matching runtimeStateDependency

```bash
agentic-db runtime-state-dependency find-first --where.id.equalTo <value>
```

### List runtimeStateDependency records with field selection

```bash
agentic-db runtime-state-dependency list --select id,id
```

### List runtimeStateDependency records with filtering and ordering

```bash
agentic-db runtime-state-dependency list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a runtimeStateDependency

```bash
agentic-db runtime-state-dependency create --stateId <UUID> --dependencyId <UUID> --entityId <UUID>
```

### Get a runtimeStateDependency by id

```bash
agentic-db runtime-state-dependency get --id <value>
```
