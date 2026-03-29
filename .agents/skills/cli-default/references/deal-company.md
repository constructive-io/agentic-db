# dealCompany

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DealCompany records via agentic-db CLI

## Usage

```bash
agentic-db deal-company list
agentic-db deal-company get --id <UUID>
agentic-db deal-company create --dealId <UUID> --companyId <UUID>
agentic-db deal-company update --id <UUID> [--dealId <UUID>] [--companyId <UUID>]
agentic-db deal-company delete --id <UUID>
```

## Examples

### List all dealCompany records

```bash
agentic-db deal-company list
```

### Create a dealCompany

```bash
agentic-db deal-company create --dealId <UUID> --companyId <UUID>
```

### Get a dealCompany by id

```bash
agentic-db deal-company get --id <value>
```
