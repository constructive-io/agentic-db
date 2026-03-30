# contactRelationship

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactRelationship records via agentic-db CLI

## Usage

```bash
agentic-db contact-relationship list
agentic-db contact-relationship get --id <UUID>
agentic-db contact-relationship create --contactId <UUID> --relatedContactId <UUID> --entityId <UUID>
agentic-db contact-relationship update --id <UUID> [--contactId <UUID>] [--relatedContactId <UUID>] [--entityId <UUID>]
agentic-db contact-relationship delete --id <UUID>
```

## Examples

### List all contactRelationship records

```bash
agentic-db contact-relationship list
```

### Create a contactRelationship

```bash
agentic-db contact-relationship create --contactId <UUID> --relatedContactId <UUID> --entityId <UUID>
```

### Get a contactRelationship by id

```bash
agentic-db contact-relationship get --id <value>
```
