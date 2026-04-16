# toolExecution

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ToolExecution records via agentic-db CLI

## Usage

```bash
agentic-db tool-execution list
agentic-db tool-execution list --where.<field>.<op> <value> --orderBy <values>
agentic-db tool-execution list --limit 10 --after <cursor>
agentic-db tool-execution find-first --where.<field>.<op> <value>
agentic-db tool-execution get --id <UUID>
agentic-db tool-execution create --toolDefinitionId <UUID> [--messageId <UUID>] [--input <JSON>] [--output <JSON>] [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--error <String>]
agentic-db tool-execution update --id <UUID> [--toolDefinitionId <UUID>] [--messageId <UUID>] [--input <JSON>] [--output <JSON>] [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--error <String>]
agentic-db tool-execution delete --id <UUID>
```

## Examples

### List toolExecution records

```bash
agentic-db tool-execution list
```

### List toolExecution records with pagination

```bash
agentic-db tool-execution list --limit 10 --offset 0
```

### List toolExecution records with cursor pagination

```bash
agentic-db tool-execution list --limit 10 --after <cursor>
```

### Find first matching toolExecution

```bash
agentic-db tool-execution find-first --where.id.equalTo <value>
```

### List toolExecution records with field selection

```bash
agentic-db tool-execution list --select id,id
```

### List toolExecution records with filtering and ordering

```bash
agentic-db tool-execution list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a toolExecution

```bash
agentic-db tool-execution create --toolDefinitionId <UUID> [--messageId <UUID>] [--input <JSON>] [--output <JSON>] [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--error <String>]
```

### Get a toolExecution by id

```bash
agentic-db tool-execution get --id <value>
```
