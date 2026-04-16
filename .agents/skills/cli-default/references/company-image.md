# companyImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyImage records via agentic-db CLI

## Usage

```bash
agentic-db company-image list
agentic-db company-image list --where.<field>.<op> <value> --orderBy <values>
agentic-db company-image list --limit 10 --after <cursor>
agentic-db company-image find-first --where.<field>.<op> <value>
agentic-db company-image get --id <UUID>
agentic-db company-image create --companyId <UUID> --imageId <UUID>
agentic-db company-image update --id <UUID> [--companyId <UUID>] [--imageId <UUID>]
agentic-db company-image delete --id <UUID>
```

## Examples

### List companyImage records

```bash
agentic-db company-image list
```

### List companyImage records with pagination

```bash
agentic-db company-image list --limit 10 --offset 0
```

### List companyImage records with cursor pagination

```bash
agentic-db company-image list --limit 10 --after <cursor>
```

### Find first matching companyImage

```bash
agentic-db company-image find-first --where.id.equalTo <value>
```

### List companyImage records with field selection

```bash
agentic-db company-image list --select id,id
```

### List companyImage records with filtering and ordering

```bash
agentic-db company-image list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a companyImage

```bash
agentic-db company-image create --companyId <UUID> --imageId <UUID>
```

### Get a companyImage by id

```bash
agentic-db company-image get --id <value>
```
