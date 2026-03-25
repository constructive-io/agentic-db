# profilesModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ProfilesModule records via agentic-db CLI

## Usage

```bash
agentic-db profiles-module list
agentic-db profiles-module get --id <UUID>
agentic-db profiles-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--profilePermissionsTableId <UUID>] [--profilePermissionsTableName <String>] [--profileGrantsTableId <UUID>] [--profileGrantsTableName <String>] [--profileDefinitionGrantsTableId <UUID>] [--profileDefinitionGrantsTableName <String>] [--entityTableId <UUID>] [--actorTableId <UUID>] [--permissionsTableId <UUID>] [--membershipsTableId <UUID>] [--prefix <String>]
agentic-db profiles-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--profilePermissionsTableId <UUID>] [--profilePermissionsTableName <String>] [--profileGrantsTableId <UUID>] [--profileGrantsTableName <String>] [--profileDefinitionGrantsTableId <UUID>] [--profileDefinitionGrantsTableName <String>] [--membershipType <Int>] [--entityTableId <UUID>] [--actorTableId <UUID>] [--permissionsTableId <UUID>] [--membershipsTableId <UUID>] [--prefix <String>]
agentic-db profiles-module delete --id <UUID>
```

## Examples

### List all profilesModule records

```bash
agentic-db profiles-module list
```

### Create a profilesModule

```bash
agentic-db profiles-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--profilePermissionsTableId <UUID>] [--profilePermissionsTableName <String>] [--profileGrantsTableId <UUID>] [--profileGrantsTableName <String>] [--profileDefinitionGrantsTableId <UUID>] [--profileDefinitionGrantsTableName <String>] [--entityTableId <UUID>] [--actorTableId <UUID>] [--permissionsTableId <UUID>] [--membershipsTableId <UUID>] [--prefix <String>]
```

### Get a profilesModule by id

```bash
agentic-db profiles-module get --id <value>
```
