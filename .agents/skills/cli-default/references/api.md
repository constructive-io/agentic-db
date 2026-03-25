# api

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Api records via agentic-db CLI

## Usage

```bash
agentic-db api list
agentic-db api get --id <UUID>
agentic-db api create --databaseId <UUID> --name <String> [--dbname <String>] [--roleName <String>] [--anonRole <String>] [--isPublic <Boolean>]
agentic-db api update --id <UUID> [--databaseId <UUID>] [--name <String>] [--dbname <String>] [--roleName <String>] [--anonRole <String>] [--isPublic <Boolean>]
agentic-db api delete --id <UUID>
```

## Examples

### List all api records

```bash
agentic-db api list
```

### Create a api

```bash
agentic-db api create --databaseId <UUID> --name <String> [--dbname <String>] [--roleName <String>] [--anonRole <String>] [--isPublic <Boolean>]
```

### Get a api by id

```bash
agentic-db api get --id <value>
```
