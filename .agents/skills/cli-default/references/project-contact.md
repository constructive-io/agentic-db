# projectContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ProjectContact records via agentic-db CLI

## Usage

```bash
agentic-db project-contact list
agentic-db project-contact get --id <UUID>
agentic-db project-contact create --projectId <UUID> --contactId <UUID> --entityId <UUID>
agentic-db project-contact update --id <UUID> [--projectId <UUID>] [--contactId <UUID>] [--entityId <UUID>]
agentic-db project-contact delete --id <UUID>
```

## Examples

### List all projectContact records

```bash
agentic-db project-contact list
```

### Create a projectContact

```bash
agentic-db project-contact create --projectId <UUID> --contactId <UUID> --entityId <UUID>
```

### Get a projectContact by id

```bash
agentic-db project-contact get --id <value>
```
