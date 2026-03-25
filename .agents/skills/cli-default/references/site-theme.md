# siteTheme

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SiteTheme records via agentic-db CLI

## Usage

```bash
agentic-db site-theme list
agentic-db site-theme get --id <UUID>
agentic-db site-theme create --databaseId <UUID> --siteId <UUID> --theme <JSON>
agentic-db site-theme update --id <UUID> [--databaseId <UUID>] [--siteId <UUID>] [--theme <JSON>]
agentic-db site-theme delete --id <UUID>
```

## Examples

### List all siteTheme records

```bash
agentic-db site-theme list
```

### Create a siteTheme

```bash
agentic-db site-theme create --databaseId <UUID> --siteId <UUID> --theme <JSON>
```

### Get a siteTheme by id

```bash
agentic-db site-theme get --id <value>
```
