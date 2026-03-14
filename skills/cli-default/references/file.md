# file

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for File records via agent-os CLI

## Usage

```bash
agent-os file list
agent-os file get --id <value>
agent-os file create --entityId <value> --path <value> [--repositoryId <value>] [--language <value>] [--hash <value>]
agent-os file update --id <value> [--entityId <value>] [--repositoryId <value>] [--path <value>] [--language <value>] [--hash <value>]
agent-os file delete --id <value>
```

## Examples

### List all file records

```bash
agent-os file list
```

### Create a file

```bash
agent-os file create --entityId <value> --path <value> [--repositoryId <value>] [--language <value>] [--hash <value>]
```

### Get a file by id

```bash
agent-os file get --id <value>
```
