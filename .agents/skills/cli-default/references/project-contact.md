# projectContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ProjectContact records via agentic-db CLI

## Usage

```bash
agentic-db project-contact list
agentic-db project-contact list --where.<field>.<op> <value> --orderBy <values>
agentic-db project-contact list --limit 10 --after <cursor>
agentic-db project-contact find-first --where.<field>.<op> <value>
agentic-db project-contact get --id <UUID>
agentic-db project-contact create --projectId <UUID> --contactId <UUID>
agentic-db project-contact update --id <UUID> [--projectId <UUID>] [--contactId <UUID>]
agentic-db project-contact delete --id <UUID>
```

## Examples

### List projectContact records

```bash
agentic-db project-contact list
```

### List projectContact records with pagination

```bash
agentic-db project-contact list --limit 10 --offset 0
```

### List projectContact records with cursor pagination

```bash
agentic-db project-contact list --limit 10 --after <cursor>
```

### Find first matching projectContact

```bash
agentic-db project-contact find-first --where.id.equalTo <value>
```

### List projectContact records with field selection

```bash
agentic-db project-contact list --select id,id
```

### List projectContact records with filtering and ordering

```bash
agentic-db project-contact list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a projectContact

```bash
agentic-db project-contact create --projectId <UUID> --contactId <UUID>
```

### Get a projectContact by id

```bash
agentic-db project-contact get --id <value>
```
