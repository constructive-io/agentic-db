# dealCompany

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DealCompany records via agentic-db CLI

## Usage

```bash
agentic-db deal-company list
agentic-db deal-company list --where.<field>.<op> <value> --orderBy <values>
agentic-db deal-company list --limit 10 --after <cursor>
agentic-db deal-company find-first --where.<field>.<op> <value>
agentic-db deal-company get --id <UUID>
agentic-db deal-company create --dealId <UUID> --companyId <UUID> --entityId <UUID>
agentic-db deal-company update --id <UUID> [--dealId <UUID>] [--companyId <UUID>] [--entityId <UUID>]
agentic-db deal-company delete --id <UUID>
```

## Examples

### List dealCompany records

```bash
agentic-db deal-company list
```

### List dealCompany records with pagination

```bash
agentic-db deal-company list --limit 10 --offset 0
```

### List dealCompany records with cursor pagination

```bash
agentic-db deal-company list --limit 10 --after <cursor>
```

### Find first matching dealCompany

```bash
agentic-db deal-company find-first --where.id.equalTo <value>
```

### List dealCompany records with field selection

```bash
agentic-db deal-company list --select id,id
```

### List dealCompany records with filtering and ordering

```bash
agentic-db deal-company list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a dealCompany

```bash
agentic-db deal-company create --dealId <UUID> --companyId <UUID> --entityId <UUID>
```

### Get a dealCompany by id

```bash
agentic-db deal-company get --id <value>
```
