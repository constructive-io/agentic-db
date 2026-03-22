# file

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for File records via agentic-db CLI

## Usage

```bash
agentic-db file list
agentic-db file get --id <UUID>
agentic-db file create --entityId <UUID> --path <String> [--repositoryId <UUID>] [--language <String>] [--hash <String>]
agentic-db file update --id <UUID> [--entityId <UUID>] [--repositoryId <UUID>] [--path <String>] [--language <String>] [--hash <String>]
agentic-db file delete --id <UUID>
```

## Examples

### List all file records

```bash
agentic-db file list
```

### Create a file

```bash
agentic-db file create --entityId <UUID> --path <String> [--repositoryId <UUID>] [--language <String>] [--hash <String>]
```

### Get a file by id

```bash
agentic-db file get --id <value>
```
