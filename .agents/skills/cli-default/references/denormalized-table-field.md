# denormalizedTableField

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DenormalizedTableField records via agentic-db CLI

## Usage

```bash
agentic-db denormalized-table-field list
agentic-db denormalized-table-field get --id <UUID>
agentic-db denormalized-table-field create --databaseId <UUID> --tableId <UUID> --fieldId <UUID> --refTableId <UUID> --refFieldId <UUID> [--setIds <UUID>] [--refIds <UUID>] [--useUpdates <Boolean>] [--updateDefaults <Boolean>] [--funcName <String>] [--funcOrder <Int>]
agentic-db denormalized-table-field update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--fieldId <UUID>] [--setIds <UUID>] [--refTableId <UUID>] [--refFieldId <UUID>] [--refIds <UUID>] [--useUpdates <Boolean>] [--updateDefaults <Boolean>] [--funcName <String>] [--funcOrder <Int>]
agentic-db denormalized-table-field delete --id <UUID>
```

## Examples

### List all denormalizedTableField records

```bash
agentic-db denormalized-table-field list
```

### Create a denormalizedTableField

```bash
agentic-db denormalized-table-field create --databaseId <UUID> --tableId <UUID> --fieldId <UUID> --refTableId <UUID> --refFieldId <UUID> [--setIds <UUID>] [--refIds <UUID>] [--useUpdates <Boolean>] [--updateDefaults <Boolean>] [--funcName <String>] [--funcOrder <Int>]
```

### Get a denormalizedTableField by id

```bash
agentic-db denormalized-table-field get --id <value>
```
