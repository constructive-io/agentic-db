# contactRelationship

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactRelationship records via agentic-db CLI

## Usage

```bash
agentic-db contact-relationship list
agentic-db contact-relationship list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact-relationship list --limit 10 --after <cursor>
agentic-db contact-relationship find-first --where.<field>.<op> <value>
agentic-db contact-relationship get --id <UUID>
agentic-db contact-relationship create --contactId <UUID> --relatedContactId <UUID>
agentic-db contact-relationship update --id <UUID> [--contactId <UUID>] [--relatedContactId <UUID>]
agentic-db contact-relationship delete --id <UUID>
```

## Examples

### List contactRelationship records

```bash
agentic-db contact-relationship list
```

### List contactRelationship records with pagination

```bash
agentic-db contact-relationship list --limit 10 --offset 0
```

### List contactRelationship records with cursor pagination

```bash
agentic-db contact-relationship list --limit 10 --after <cursor>
```

### Find first matching contactRelationship

```bash
agentic-db contact-relationship find-first --where.id.equalTo <value>
```

### List contactRelationship records with field selection

```bash
agentic-db contact-relationship list --select id,id
```

### List contactRelationship records with filtering and ordering

```bash
agentic-db contact-relationship list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a contactRelationship

```bash
agentic-db contact-relationship create --contactId <UUID> --relatedContactId <UUID>
```

### Get a contactRelationship by id

```bash
agentic-db contact-relationship get --id <value>
```
