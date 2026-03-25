# fieldModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for FieldModule records via agentic-db CLI

## Usage

```bash
agentic-db field-module list
agentic-db field-module get --id <UUID>
agentic-db field-module create --databaseId <UUID> --nodeType <String> [--privateSchemaId <UUID>] [--tableId <UUID>] [--fieldId <UUID>] [--data <JSON>] [--triggers <String>] [--functions <String>]
agentic-db field-module update --id <UUID> [--databaseId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--fieldId <UUID>] [--nodeType <String>] [--data <JSON>] [--triggers <String>] [--functions <String>]
agentic-db field-module delete --id <UUID>
```

## Examples

### List all fieldModule records

```bash
agentic-db field-module list
```

### Create a fieldModule

```bash
agentic-db field-module create --databaseId <UUID> --nodeType <String> [--privateSchemaId <UUID>] [--tableId <UUID>] [--fieldId <UUID>] [--data <JSON>] [--triggers <String>] [--functions <String>]
```

### Get a fieldModule by id

```bash
agentic-db field-module get --id <value>
```
