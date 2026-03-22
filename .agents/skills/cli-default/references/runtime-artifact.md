# runtimeArtifact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeArtifact records via agentic-db CLI

## Usage

```bash
agentic-db runtime-artifact list
agentic-db runtime-artifact get --id <UUID>
agentic-db runtime-artifact create --entityId <UUID> --runtimeStateId <UUID> --name <String> [--artifactType <String>] [--content <String>] [--meta <JSON>] [--sizeBytes <Int>]
agentic-db runtime-artifact update --id <UUID> [--entityId <UUID>] [--runtimeStateId <UUID>] [--name <String>] [--artifactType <String>] [--content <String>] [--meta <JSON>] [--sizeBytes <Int>]
agentic-db runtime-artifact delete --id <UUID>
```

## Examples

### List all runtimeArtifact records

```bash
agentic-db runtime-artifact list
```

### Create a runtimeArtifact

```bash
agentic-db runtime-artifact create --entityId <UUID> --runtimeStateId <UUID> --name <String> [--artifactType <String>] [--content <String>] [--meta <JSON>] [--sizeBytes <Int>]
```

### Get a runtimeArtifact by id

```bash
agentic-db runtime-artifact get --id <value>
```
