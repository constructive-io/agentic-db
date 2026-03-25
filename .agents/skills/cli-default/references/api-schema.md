# apiSchema

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ApiSchema records via agentic-db CLI

## Usage

```bash
agentic-db api-schema list
agentic-db api-schema get --id <UUID>
agentic-db api-schema create --databaseId <UUID> --schemaId <UUID> --apiId <UUID>
agentic-db api-schema update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--apiId <UUID>]
agentic-db api-schema delete --id <UUID>
```

## Examples

### List all apiSchema records

```bash
agentic-db api-schema list
```

### Create a apiSchema

```bash
agentic-db api-schema create --databaseId <UUID> --schemaId <UUID> --apiId <UUID>
```

### Get a apiSchema by id

```bash
agentic-db api-schema get --id <value>
```
