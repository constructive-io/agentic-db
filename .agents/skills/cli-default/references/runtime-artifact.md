# runtimeArtifact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeArtifact records via agentic-db CLI

## Usage

```bash
agentic-db runtime-artifact list
agentic-db runtime-artifact list --where.<field>.<op> <value> --orderBy <values>
agentic-db runtime-artifact list --limit 10 --after <cursor>
agentic-db runtime-artifact find-first --where.<field>.<op> <value>
agentic-db runtime-artifact get --id <UUID>
agentic-db runtime-artifact create --entityId <UUID> --runtimeStateId <UUID> --name <String> [--artifactType <String>] [--content <String>] [--meta <JSON>] [--sizeBytes <Int>]
agentic-db runtime-artifact update --id <UUID> [--entityId <UUID>] [--runtimeStateId <UUID>] [--name <String>] [--artifactType <String>] [--content <String>] [--meta <JSON>] [--sizeBytes <Int>]
agentic-db runtime-artifact delete --id <UUID>
```

## Examples

### List runtimeArtifact records

```bash
agentic-db runtime-artifact list
```

### List runtimeArtifact records with pagination

```bash
agentic-db runtime-artifact list --limit 10 --offset 0
```

### List runtimeArtifact records with cursor pagination

```bash
agentic-db runtime-artifact list --limit 10 --after <cursor>
```

### Find first matching runtimeArtifact

```bash
agentic-db runtime-artifact find-first --where.id.equalTo <value>
```

### List runtimeArtifact records with field selection

```bash
agentic-db runtime-artifact list --select id,id
```

### List runtimeArtifact records with filtering and ordering

```bash
agentic-db runtime-artifact list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a runtimeArtifact

```bash
agentic-db runtime-artifact create --entityId <UUID> --runtimeStateId <UUID> --name <String> [--artifactType <String>] [--content <String>] [--meta <JSON>] [--sizeBytes <Int>]
```

### Get a runtimeArtifact by id

```bash
agentic-db runtime-artifact get --id <value>
```
