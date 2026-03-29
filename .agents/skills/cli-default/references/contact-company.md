# contactCompany

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactCompany records via agentic-db CLI

## Usage

```bash
agentic-db contact-company list
agentic-db contact-company get --id <UUID>
agentic-db contact-company create --contactId <UUID> --companyId <UUID>
agentic-db contact-company update --id <UUID> [--contactId <UUID>] [--companyId <UUID>]
agentic-db contact-company delete --id <UUID>
```

## Examples

### List all contactCompany records

```bash
agentic-db contact-company list
```

### Create a contactCompany

```bash
agentic-db contact-company create --contactId <UUID> --companyId <UUID>
```

### Get a contactCompany by id

```bash
agentic-db contact-company get --id <value>
```
