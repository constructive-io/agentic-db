# companyNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyNote records via agentic-db CLI

## Usage

```bash
agentic-db company-note list
agentic-db company-note list --where.<field>.<op> <value> --orderBy <values>
agentic-db company-note list --limit 10 --after <cursor>
agentic-db company-note find-first --where.<field>.<op> <value>
agentic-db company-note get --id <UUID>
agentic-db company-note create --companyId <UUID> --noteId <UUID>
agentic-db company-note update --id <UUID> [--companyId <UUID>] [--noteId <UUID>]
agentic-db company-note delete --id <UUID>
```

## Examples

### List companyNote records

```bash
agentic-db company-note list
```

### List companyNote records with pagination

```bash
agentic-db company-note list --limit 10 --offset 0
```

### List companyNote records with cursor pagination

```bash
agentic-db company-note list --limit 10 --after <cursor>
```

### Find first matching companyNote

```bash
agentic-db company-note find-first --where.id.equalTo <value>
```

### List companyNote records with field selection

```bash
agentic-db company-note list --select id,id
```

### List companyNote records with filtering and ordering

```bash
agentic-db company-note list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a companyNote

```bash
agentic-db company-note create --companyId <UUID> --noteId <UUID>
```

### Get a companyNote by id

```bash
agentic-db company-note get --id <value>
```
