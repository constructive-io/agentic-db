# companyNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyNote records via agentic-db CLI

## Usage

```bash
agentic-db company-note list
agentic-db company-note get --id <UUID>
agentic-db company-note create --companyId <UUID> --noteId <UUID> --entityId <UUID>
agentic-db company-note update --id <UUID> [--companyId <UUID>] [--noteId <UUID>] [--entityId <UUID>]
agentic-db company-note delete --id <UUID>
```

## Examples

### List all companyNote records

```bash
agentic-db company-note list
```

### Create a companyNote

```bash
agentic-db company-note create --companyId <UUID> --noteId <UUID> --entityId <UUID>
```

### Get a companyNote by id

```bash
agentic-db company-note get --id <value>
```
