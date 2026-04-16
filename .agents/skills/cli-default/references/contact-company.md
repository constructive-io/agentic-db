# contactCompany

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactCompany records via agentic-db CLI

## Usage

```bash
agentic-db contact-company list
agentic-db contact-company list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact-company list --limit 10 --after <cursor>
agentic-db contact-company find-first --where.<field>.<op> <value>
agentic-db contact-company get --id <UUID>
agentic-db contact-company create --contactId <UUID> --companyId <UUID>
agentic-db contact-company update --id <UUID> [--contactId <UUID>] [--companyId <UUID>]
agentic-db contact-company delete --id <UUID>
```

## Examples

### List contactCompany records

```bash
agentic-db contact-company list
```

### List contactCompany records with pagination

```bash
agentic-db contact-company list --limit 10 --offset 0
```

### List contactCompany records with cursor pagination

```bash
agentic-db contact-company list --limit 10 --after <cursor>
```

### Find first matching contactCompany

```bash
agentic-db contact-company find-first --where.id.equalTo <value>
```

### List contactCompany records with field selection

```bash
agentic-db contact-company list --select id,id
```

### List contactCompany records with filtering and ordering

```bash
agentic-db contact-company list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a contactCompany

```bash
agentic-db contact-company create --contactId <UUID> --companyId <UUID>
```

### Get a contactCompany by id

```bash
agentic-db contact-company get --id <value>
```
