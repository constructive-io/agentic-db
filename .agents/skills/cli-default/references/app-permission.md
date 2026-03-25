# appPermission

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppPermission records via agentic-db CLI

## Usage

```bash
agentic-db app-permission list
agentic-db app-permission get --id <UUID>
agentic-db app-permission create [--name <String>] [--bitnum <Int>] [--bitstr <BitString>] [--description <String>]
agentic-db app-permission update --id <UUID> [--name <String>] [--bitnum <Int>] [--bitstr <BitString>] [--description <String>]
agentic-db app-permission delete --id <UUID>
```

## Examples

### List all appPermission records

```bash
agentic-db app-permission list
```

### Create a appPermission

```bash
agentic-db app-permission create [--name <String>] [--bitnum <Int>] [--bitstr <BitString>] [--description <String>]
```

### Get a appPermission by id

```bash
agentic-db app-permission get --id <value>
```
