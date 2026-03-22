# contactMemory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactMemory records via agentic-db CLI

## Usage

```bash
agentic-db contact-memory list
agentic-db contact-memory get --id <UUID>
agentic-db contact-memory create --contactId <UUID> --memoryId <UUID> --entityId <UUID>
agentic-db contact-memory update --id <UUID> [--contactId <UUID>] [--memoryId <UUID>] [--entityId <UUID>]
agentic-db contact-memory delete --id <UUID>
```

## Examples

### List all contactMemory records

```bash
agentic-db contact-memory list
```

### Create a contactMemory

```bash
agentic-db contact-memory create --contactId <UUID> --memoryId <UUID> --entityId <UUID>
```

### Get a contactMemory by id

```bash
agentic-db contact-memory get --id <value>
```
