# orgPermission

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgPermission records via agentic-db CLI

## Usage

```bash
agentic-db org-permission list
agentic-db org-permission get --id <UUID>
agentic-db org-permission create [--name <String>] [--bitnum <Int>] [--bitstr <BitString>] [--description <String>]
agentic-db org-permission update --id <UUID> [--name <String>] [--bitnum <Int>] [--bitstr <BitString>] [--description <String>]
agentic-db org-permission delete --id <UUID>
```

## Examples

### List all orgPermission records

```bash
agentic-db org-permission list
```

### Create a orgPermission

```bash
agentic-db org-permission create [--name <String>] [--bitnum <Int>] [--bitstr <BitString>] [--description <String>]
```

### Get a orgPermission by id

```bash
agentic-db org-permission get --id <value>
```
