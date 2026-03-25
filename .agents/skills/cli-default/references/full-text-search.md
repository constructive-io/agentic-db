# fullTextSearch

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for FullTextSearch records via agentic-db CLI

## Usage

```bash
agentic-db full-text-search list
agentic-db full-text-search get --id <UUID>
agentic-db full-text-search create --tableId <UUID> --fieldId <UUID> --fieldIds <UUID> --weights <String> --langs <String> [--databaseId <UUID>]
agentic-db full-text-search update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--fieldId <UUID>] [--fieldIds <UUID>] [--weights <String>] [--langs <String>]
agentic-db full-text-search delete --id <UUID>
```

## Examples

### List all fullTextSearch records

```bash
agentic-db full-text-search list
```

### Create a fullTextSearch

```bash
agentic-db full-text-search create --tableId <UUID> --fieldId <UUID> --fieldIds <UUID> --weights <String> --langs <String> [--databaseId <UUID>]
```

### Get a fullTextSearch by id

```bash
agentic-db full-text-search get --id <value>
```
