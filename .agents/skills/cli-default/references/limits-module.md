# limitsModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for LimitsModule records via agentic-db CLI

## Usage

```bash
agentic-db limits-module list
agentic-db limits-module get --id <UUID>
agentic-db limits-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--defaultTableId <UUID>] [--defaultTableName <String>] [--limitIncrementFunction <String>] [--limitDecrementFunction <String>] [--limitIncrementTrigger <String>] [--limitDecrementTrigger <String>] [--limitUpdateTrigger <String>] [--limitCheckFunction <String>] [--prefix <String>] [--entityTableId <UUID>] [--actorTableId <UUID>]
agentic-db limits-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--defaultTableId <UUID>] [--defaultTableName <String>] [--limitIncrementFunction <String>] [--limitDecrementFunction <String>] [--limitIncrementTrigger <String>] [--limitDecrementTrigger <String>] [--limitUpdateTrigger <String>] [--limitCheckFunction <String>] [--prefix <String>] [--membershipType <Int>] [--entityTableId <UUID>] [--actorTableId <UUID>]
agentic-db limits-module delete --id <UUID>
```

## Examples

### List all limitsModule records

```bash
agentic-db limits-module list
```

### Create a limitsModule

```bash
agentic-db limits-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--defaultTableId <UUID>] [--defaultTableName <String>] [--limitIncrementFunction <String>] [--limitDecrementFunction <String>] [--limitIncrementTrigger <String>] [--limitDecrementTrigger <String>] [--limitUpdateTrigger <String>] [--limitCheckFunction <String>] [--prefix <String>] [--entityTableId <UUID>] [--actorTableId <UUID>]
```

### Get a limitsModule by id

```bash
agentic-db limits-module get --id <value>
```
