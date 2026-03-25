# apiModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ApiModule records via agentic-db CLI

## Usage

```bash
agentic-db api-module list
agentic-db api-module get --id <UUID>
agentic-db api-module create --databaseId <UUID> --apiId <UUID> --name <String> --data <JSON>
agentic-db api-module update --id <UUID> [--databaseId <UUID>] [--apiId <UUID>] [--name <String>] [--data <JSON>]
agentic-db api-module delete --id <UUID>
```

## Examples

### List all apiModule records

```bash
agentic-db api-module list
```

### Create a apiModule

```bash
agentic-db api-module create --databaseId <UUID> --apiId <UUID> --name <String> --data <JSON>
```

### Get a apiModule by id

```bash
agentic-db api-module get --id <value>
```
