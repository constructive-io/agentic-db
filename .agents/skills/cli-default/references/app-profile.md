# appProfile

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppProfile records via agentic-db CLI

## Usage

```bash
agentic-db app-profile list
agentic-db app-profile get --id <UUID>
agentic-db app-profile create --name <String> --slug <String> [--description <String>] [--permissions <BitString>] [--isSystem <Boolean>] [--isDefault <Boolean>]
agentic-db app-profile update --id <UUID> [--name <String>] [--slug <String>] [--description <String>] [--permissions <BitString>] [--isSystem <Boolean>] [--isDefault <Boolean>]
agentic-db app-profile delete --id <UUID>
```

## Examples

### List all appProfile records

```bash
agentic-db app-profile list
```

### Create a appProfile

```bash
agentic-db app-profile create --name <String> --slug <String> [--description <String>] [--permissions <BitString>] [--isSystem <Boolean>] [--isDefault <Boolean>]
```

### Get a appProfile by id

```bash
agentic-db app-profile get --id <value>
```
