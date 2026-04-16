# companyEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyEvent records via agentic-db CLI

## Usage

```bash
agentic-db company-event list
agentic-db company-event list --where.<field>.<op> <value> --orderBy <values>
agentic-db company-event list --limit 10 --after <cursor>
agentic-db company-event find-first --where.<field>.<op> <value>
agentic-db company-event get --id <UUID>
agentic-db company-event create --companyId <UUID> --eventId <UUID>
agentic-db company-event update --id <UUID> [--companyId <UUID>] [--eventId <UUID>]
agentic-db company-event delete --id <UUID>
```

## Examples

### List companyEvent records

```bash
agentic-db company-event list
```

### List companyEvent records with pagination

```bash
agentic-db company-event list --limit 10 --offset 0
```

### List companyEvent records with cursor pagination

```bash
agentic-db company-event list --limit 10 --after <cursor>
```

### Find first matching companyEvent

```bash
agentic-db company-event find-first --where.id.equalTo <value>
```

### List companyEvent records with field selection

```bash
agentic-db company-event list --select id,id
```

### List companyEvent records with filtering and ordering

```bash
agentic-db company-event list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a companyEvent

```bash
agentic-db company-event create --companyId <UUID> --eventId <UUID>
```

### Get a companyEvent by id

```bash
agentic-db company-event get --id <value>
```
