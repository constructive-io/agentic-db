# defaultPrivilege

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DefaultPrivilege records via agentic-db CLI

## Usage

```bash
agentic-db default-privilege list
agentic-db default-privilege get --id <UUID>
agentic-db default-privilege create --schemaId <UUID> --objectType <String> --privilege <String> --granteeName <String> [--databaseId <UUID>] [--isGrant <Boolean>]
agentic-db default-privilege update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--objectType <String>] [--privilege <String>] [--granteeName <String>] [--isGrant <Boolean>]
agentic-db default-privilege delete --id <UUID>
```

## Examples

### List all defaultPrivilege records

```bash
agentic-db default-privilege list
```

### Create a defaultPrivilege

```bash
agentic-db default-privilege create --schemaId <UUID> --objectType <String> --privilege <String> --granteeName <String> [--databaseId <UUID>] [--isGrant <Boolean>]
```

### Get a defaultPrivilege by id

```bash
agentic-db default-privilege get --id <value>
```
