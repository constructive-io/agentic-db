# tag

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Tag records via agentic-db CLI

## Usage

```bash
agentic-db tag list
agentic-db tag list --where.<field>.<op> <value> --orderBy <values>
agentic-db tag list --limit 10 --after <cursor>
agentic-db tag find-first --where.<field>.<op> <value>
agentic-db tag get --id <UUID>
agentic-db tag create --name <String> [--color <String>] [--category <String>] [--usageCount <Int>]
agentic-db tag update --id <UUID> [--name <String>] [--color <String>] [--category <String>] [--usageCount <Int>]
agentic-db tag delete --id <UUID>
```

## Examples

### List tag records

```bash
agentic-db tag list
```

### List tag records with pagination

```bash
agentic-db tag list --limit 10 --offset 0
```

### List tag records with cursor pagination

```bash
agentic-db tag list --limit 10 --after <cursor>
```

### Find first matching tag

```bash
agentic-db tag find-first --where.id.equalTo <value>
```

### List tag records with field selection

```bash
agentic-db tag list --select id,id
```

### List tag records with filtering and ordering

```bash
agentic-db tag list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a tag

```bash
agentic-db tag create --name <String> [--color <String>] [--category <String>] [--usageCount <Int>]
```

### Get a tag by id

```bash
agentic-db tag get --id <value>
```
