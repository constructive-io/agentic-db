# habit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Habit records via agentic-db CLI

## Usage

```bash
agentic-db habit list
agentic-db habit list --where.<field>.<op> <value> --orderBy <values>
agentic-db habit list --limit 10 --after <cursor>
agentic-db habit find-first --where.<field>.<op> <value>
agentic-db habit get --id <UUID>
agentic-db habit create --name <String> [--frequency <String>] [--streak <Int>] [--lastCompletedAt <Datetime>] [--tags <String>]
agentic-db habit update --id <UUID> [--name <String>] [--frequency <String>] [--streak <Int>] [--lastCompletedAt <Datetime>] [--tags <String>]
agentic-db habit delete --id <UUID>
```

## Examples

### List habit records

```bash
agentic-db habit list
```

### List habit records with pagination

```bash
agentic-db habit list --limit 10 --offset 0
```

### List habit records with cursor pagination

```bash
agentic-db habit list --limit 10 --after <cursor>
```

### Find first matching habit

```bash
agentic-db habit find-first --where.id.equalTo <value>
```

### List habit records with field selection

```bash
agentic-db habit list --select id,id
```

### List habit records with filtering and ordering

```bash
agentic-db habit list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a habit

```bash
agentic-db habit create --name <String> [--frequency <String>] [--streak <Int>] [--lastCompletedAt <Datetime>] [--tags <String>]
```

### Get a habit by id

```bash
agentic-db habit get --id <value>
```
