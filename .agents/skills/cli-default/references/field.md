# field

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Field records via agentic-db CLI

## Usage

```bash
agentic-db field list
agentic-db field get --id <UUID>
agentic-db field create --tableId <UUID> --name <String> --type <String> [--databaseId <UUID>] [--label <String>] [--description <String>] [--smartTags <JSON>] [--isRequired <Boolean>] [--apiRequired <Boolean>] [--defaultValue <String>] [--defaultValueAst <JSON>] [--fieldOrder <Int>] [--regexp <String>] [--chk <JSON>] [--chkExpr <JSON>] [--min <Float>] [--max <Float>] [--tags <String>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>]
agentic-db field update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--name <String>] [--label <String>] [--description <String>] [--smartTags <JSON>] [--isRequired <Boolean>] [--apiRequired <Boolean>] [--defaultValue <String>] [--defaultValueAst <JSON>] [--type <String>] [--fieldOrder <Int>] [--regexp <String>] [--chk <JSON>] [--chkExpr <JSON>] [--min <Float>] [--max <Float>] [--tags <String>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>]
agentic-db field delete --id <UUID>
```

## Examples

### List all field records

```bash
agentic-db field list
```

### Create a field

```bash
agentic-db field create --tableId <UUID> --name <String> --type <String> [--databaseId <UUID>] [--label <String>] [--description <String>] [--smartTags <JSON>] [--isRequired <Boolean>] [--apiRequired <Boolean>] [--defaultValue <String>] [--defaultValueAst <JSON>] [--fieldOrder <Int>] [--regexp <String>] [--chk <JSON>] [--chkExpr <JSON>] [--min <Float>] [--max <Float>] [--tags <String>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>]
```

### Get a field by id

```bash
agentic-db field get --id <value>
```
