# companyMemory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyMemory records via agentic-db CLI

## Usage

```bash
agentic-db company-memory list
agentic-db company-memory list --where.<field>.<op> <value> --orderBy <values>
agentic-db company-memory list --limit 10 --after <cursor>
agentic-db company-memory find-first --where.<field>.<op> <value>
agentic-db company-memory get --id <UUID>
agentic-db company-memory create --companyId <UUID> --memoryId <UUID> --entityId <UUID>
agentic-db company-memory update --id <UUID> [--companyId <UUID>] [--memoryId <UUID>] [--entityId <UUID>]
agentic-db company-memory delete --id <UUID>
```

## Examples

### List companyMemory records

```bash
agentic-db company-memory list
```

### List companyMemory records with pagination

```bash
agentic-db company-memory list --limit 10 --offset 0
```

### List companyMemory records with cursor pagination

```bash
agentic-db company-memory list --limit 10 --after <cursor>
```

### Find first matching companyMemory

```bash
agentic-db company-memory find-first --where.id.equalTo <value>
```

### List companyMemory records with field selection

```bash
agentic-db company-memory list --select id,id
```

### List companyMemory records with filtering and ordering

```bash
agentic-db company-memory list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a companyMemory

```bash
agentic-db company-memory create --companyId <UUID> --memoryId <UUID> --entityId <UUID>
```

### Get a companyMemory by id

```bash
agentic-db company-memory get --id <value>
```
