# siteModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SiteModule records via agentic-db CLI

## Usage

```bash
agentic-db site-module list
agentic-db site-module get --id <UUID>
agentic-db site-module create --databaseId <UUID> --siteId <UUID> --name <String> --data <JSON>
agentic-db site-module update --id <UUID> [--databaseId <UUID>] [--siteId <UUID>] [--name <String>] [--data <JSON>]
agentic-db site-module delete --id <UUID>
```

## Examples

### List all siteModule records

```bash
agentic-db site-module list
```

### Create a siteModule

```bash
agentic-db site-module create --databaseId <UUID> --siteId <UUID> --name <String> --data <JSON>
```

### Get a siteModule by id

```bash
agentic-db site-module get --id <value>
```
