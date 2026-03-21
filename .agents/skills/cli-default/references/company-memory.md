# companyMemory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyMemory records via agentic-db CLI

## Usage

```bash
agentic-db company-memory list
agentic-db company-memory get --id <UUID>
agentic-db company-memory create --companyId <UUID> --memoryId <UUID> --entityId <UUID>
agentic-db company-memory update --id <UUID> [--companyId <UUID>] [--memoryId <UUID>] [--entityId <UUID>]
agentic-db company-memory delete --id <UUID>
```

## Examples

### List all companyMemory records

```bash
agentic-db company-memory list
```

### Create a companyMemory

```bash
agentic-db company-memory create --companyId <UUID> --memoryId <UUID> --entityId <UUID>
```

### Get a companyMemory by id

```bash
agentic-db company-memory get --id <value>
```
