# connectedAccountsModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ConnectedAccountsModule records via agentic-db CLI

## Usage

```bash
agentic-db connected-accounts-module list
agentic-db connected-accounts-module get --id <UUID>
agentic-db connected-accounts-module create --databaseId <UUID> --tableName <String> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--ownerTableId <UUID>]
agentic-db connected-accounts-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--ownerTableId <UUID>] [--tableName <String>]
agentic-db connected-accounts-module delete --id <UUID>
```

## Examples

### List all connectedAccountsModule records

```bash
agentic-db connected-accounts-module list
```

### Create a connectedAccountsModule

```bash
agentic-db connected-accounts-module create --databaseId <UUID> --tableName <String> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--ownerTableId <UUID>]
```

### Get a connectedAccountsModule by id

```bash
agentic-db connected-accounts-module get --id <value>
```
