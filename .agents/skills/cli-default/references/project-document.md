# projectDocument

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ProjectDocument records via agentic-db CLI

## Usage

```bash
agentic-db project-document list
agentic-db project-document list --where.<field>.<op> <value> --orderBy <values>
agentic-db project-document list --limit 10 --after <cursor>
agentic-db project-document find-first --where.<field>.<op> <value>
agentic-db project-document get --id <UUID>
agentic-db project-document create --projectId <UUID> --documentId <UUID>
agentic-db project-document update --id <UUID> [--projectId <UUID>] [--documentId <UUID>]
agentic-db project-document delete --id <UUID>
```

## Examples

### List projectDocument records

```bash
agentic-db project-document list
```

### List projectDocument records with pagination

```bash
agentic-db project-document list --limit 10 --offset 0
```

### List projectDocument records with cursor pagination

```bash
agentic-db project-document list --limit 10 --after <cursor>
```

### Find first matching projectDocument

```bash
agentic-db project-document find-first --where.id.equalTo <value>
```

### List projectDocument records with field selection

```bash
agentic-db project-document list --select id,id
```

### List projectDocument records with filtering and ordering

```bash
agentic-db project-document list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a projectDocument

```bash
agentic-db project-document create --projectId <UUID> --documentId <UUID>
```

### Get a projectDocument by id

```bash
agentic-db project-document get --id <value>
```
