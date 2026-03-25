# databaseProvisionModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DatabaseProvisionModule records via agentic-db CLI

## Usage

```bash
agentic-db database-provision-module list
agentic-db database-provision-module get --id <UUID>
agentic-db database-provision-module create --databaseName <String> --ownerId <UUID> --domain <String> [--subdomain <String>] [--modules <String>] [--options <JSON>] [--bootstrapUser <Boolean>] [--status <String>] [--errorMessage <String>] [--databaseId <UUID>] [--completedAt <Datetime>]
agentic-db database-provision-module update --id <UUID> [--databaseName <String>] [--ownerId <UUID>] [--subdomain <String>] [--domain <String>] [--modules <String>] [--options <JSON>] [--bootstrapUser <Boolean>] [--status <String>] [--errorMessage <String>] [--databaseId <UUID>] [--completedAt <Datetime>]
agentic-db database-provision-module delete --id <UUID>
```

## Examples

### List all databaseProvisionModule records

```bash
agentic-db database-provision-module list
```

### Create a databaseProvisionModule

```bash
agentic-db database-provision-module create --databaseName <String> --ownerId <UUID> --domain <String> [--subdomain <String>] [--modules <String>] [--options <JSON>] [--bootstrapUser <Boolean>] [--status <String>] [--errorMessage <String>] [--databaseId <UUID>] [--completedAt <Datetime>]
```

### Get a databaseProvisionModule by id

```bash
agentic-db database-provision-module get --id <value>
```
