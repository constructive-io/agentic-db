# hierarchyModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HierarchyModule records via agentic-db CLI

## Usage

```bash
agentic-db hierarchy-module list
agentic-db hierarchy-module get --id <UUID>
agentic-db hierarchy-module create --databaseId <UUID> --entityTableId <UUID> --usersTableId <UUID> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--chartEdgesTableId <UUID>] [--chartEdgesTableName <String>] [--hierarchySprtTableId <UUID>] [--hierarchySprtTableName <String>] [--chartEdgeGrantsTableId <UUID>] [--chartEdgeGrantsTableName <String>] [--prefix <String>] [--privateSchemaName <String>] [--sprtTableName <String>] [--rebuildHierarchyFunction <String>] [--getSubordinatesFunction <String>] [--getManagersFunction <String>] [--isManagerOfFunction <String>]
agentic-db hierarchy-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--privateSchemaId <UUID>] [--chartEdgesTableId <UUID>] [--chartEdgesTableName <String>] [--hierarchySprtTableId <UUID>] [--hierarchySprtTableName <String>] [--chartEdgeGrantsTableId <UUID>] [--chartEdgeGrantsTableName <String>] [--entityTableId <UUID>] [--usersTableId <UUID>] [--prefix <String>] [--privateSchemaName <String>] [--sprtTableName <String>] [--rebuildHierarchyFunction <String>] [--getSubordinatesFunction <String>] [--getManagersFunction <String>] [--isManagerOfFunction <String>]
agentic-db hierarchy-module delete --id <UUID>
```

## Examples

### List all hierarchyModule records

```bash
agentic-db hierarchy-module list
```

### Create a hierarchyModule

```bash
agentic-db hierarchy-module create --databaseId <UUID> --entityTableId <UUID> --usersTableId <UUID> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--chartEdgesTableId <UUID>] [--chartEdgesTableName <String>] [--hierarchySprtTableId <UUID>] [--hierarchySprtTableName <String>] [--chartEdgeGrantsTableId <UUID>] [--chartEdgeGrantsTableName <String>] [--prefix <String>] [--privateSchemaName <String>] [--sprtTableName <String>] [--rebuildHierarchyFunction <String>] [--getSubordinatesFunction <String>] [--getManagersFunction <String>] [--isManagerOfFunction <String>]
```

### Get a hierarchyModule by id

```bash
agentic-db hierarchy-module get --id <value>
```
