# autonomyRecordLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AutonomyRecordLink records via agentic-db CLI

## Usage

```bash
agentic-db autonomy-record-link list
agentic-db autonomy-record-link list --where.<field>.<op> <value> --orderBy <values>
agentic-db autonomy-record-link list --limit 10 --after <cursor>
agentic-db autonomy-record-link find-first --where.<field>.<op> <value>
agentic-db autonomy-record-link get --id <UUID>
agentic-db autonomy-record-link create --sourceRecordId <UUID> --targetRecordId <UUID>
agentic-db autonomy-record-link update --id <UUID> [--sourceRecordId <UUID>] [--targetRecordId <UUID>]
agentic-db autonomy-record-link delete --id <UUID>
```

## Examples

### List autonomyRecordLink records

```bash
agentic-db autonomy-record-link list
```

### List autonomyRecordLink records with pagination

```bash
agentic-db autonomy-record-link list --limit 10 --offset 0
```

### List autonomyRecordLink records with cursor pagination

```bash
agentic-db autonomy-record-link list --limit 10 --after <cursor>
```

### Find first matching autonomyRecordLink

```bash
agentic-db autonomy-record-link find-first --where.id.equalTo <value>
```

### List autonomyRecordLink records with field selection

```bash
agentic-db autonomy-record-link list --select id,id
```

### List autonomyRecordLink records with filtering and ordering

```bash
agentic-db autonomy-record-link list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a autonomyRecordLink

```bash
agentic-db autonomy-record-link create --sourceRecordId <UUID> --targetRecordId <UUID>
```

### Get a autonomyRecordLink by id

```bash
agentic-db autonomy-record-link get --id <value>
```
