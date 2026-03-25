# domain

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Domain records via agentic-db CLI

## Usage

```bash
agentic-db domain list
agentic-db domain get --id <UUID>
agentic-db domain create --databaseId <UUID> [--apiId <UUID>] [--siteId <UUID>] [--subdomain <Hostname>] [--domain <Hostname>]
agentic-db domain update --id <UUID> [--databaseId <UUID>] [--apiId <UUID>] [--siteId <UUID>] [--subdomain <Hostname>] [--domain <Hostname>]
agentic-db domain delete --id <UUID>
```

## Examples

### List all domain records

```bash
agentic-db domain list
```

### Create a domain

```bash
agentic-db domain create --databaseId <UUID> [--apiId <UUID>] [--siteId <UUID>] [--subdomain <Hostname>] [--domain <Hostname>]
```

### Get a domain by id

```bash
agentic-db domain get --id <value>
```
