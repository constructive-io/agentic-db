# codebaseDependency

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CodebaseDependency records via agentic-db CLI

## Usage

```bash
agentic-db codebase-dependency list
agentic-db codebase-dependency list --where.<field>.<op> <value> --orderBy <values>
agentic-db codebase-dependency list --limit 10 --after <cursor>
agentic-db codebase-dependency find-first --where.<field>.<op> <value>
agentic-db codebase-dependency get --id <UUID>
agentic-db codebase-dependency create --codebaseId <UUID> --dependencyId <UUID> --entityId <UUID>
agentic-db codebase-dependency update --id <UUID> [--codebaseId <UUID>] [--dependencyId <UUID>] [--entityId <UUID>]
agentic-db codebase-dependency delete --id <UUID>
```

## Examples

### List codebaseDependency records

```bash
agentic-db codebase-dependency list
```

### List codebaseDependency records with pagination

```bash
agentic-db codebase-dependency list --limit 10 --offset 0
```

### List codebaseDependency records with cursor pagination

```bash
agentic-db codebase-dependency list --limit 10 --after <cursor>
```

### Find first matching codebaseDependency

```bash
agentic-db codebase-dependency find-first --where.id.equalTo <value>
```

### List codebaseDependency records with field selection

```bash
agentic-db codebase-dependency list --select id,id
```

### List codebaseDependency records with filtering and ordering

```bash
agentic-db codebase-dependency list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a codebaseDependency

```bash
agentic-db codebase-dependency create --codebaseId <UUID> --dependencyId <UUID> --entityId <UUID>
```

### Get a codebaseDependency by id

```bash
agentic-db codebase-dependency get --id <value>
```
