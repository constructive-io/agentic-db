# companyDocument

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyDocument records via agentic-db CLI

## Usage

```bash
agentic-db company-document list
agentic-db company-document list --where.<field>.<op> <value> --orderBy <values>
agentic-db company-document list --limit 10 --after <cursor>
agentic-db company-document find-first --where.<field>.<op> <value>
agentic-db company-document get --id <UUID>
agentic-db company-document create --companyId <UUID> --documentId <UUID>
agentic-db company-document update --id <UUID> [--companyId <UUID>] [--documentId <UUID>]
agentic-db company-document delete --id <UUID>
```

## Examples

### List companyDocument records

```bash
agentic-db company-document list
```

### List companyDocument records with pagination

```bash
agentic-db company-document list --limit 10 --offset 0
```

### List companyDocument records with cursor pagination

```bash
agentic-db company-document list --limit 10 --after <cursor>
```

### Find first matching companyDocument

```bash
agentic-db company-document find-first --where.id.equalTo <value>
```

### List companyDocument records with field selection

```bash
agentic-db company-document list --select id,id
```

### List companyDocument records with filtering and ordering

```bash
agentic-db company-document list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a companyDocument

```bash
agentic-db company-document create --companyId <UUID> --documentId <UUID>
```

### Get a companyDocument by id

```bash
agentic-db company-document get --id <value>
```
