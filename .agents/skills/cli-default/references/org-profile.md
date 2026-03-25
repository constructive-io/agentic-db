# orgProfile

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgProfile records via agentic-db CLI

## Usage

```bash
agentic-db org-profile list
agentic-db org-profile get --id <UUID>
agentic-db org-profile create --name <String> --slug <String> [--description <String>] [--permissions <BitString>] [--isSystem <Boolean>] [--isDefault <Boolean>] [--entityId <UUID>]
agentic-db org-profile update --id <UUID> [--name <String>] [--slug <String>] [--description <String>] [--permissions <BitString>] [--isSystem <Boolean>] [--isDefault <Boolean>] [--entityId <UUID>]
agentic-db org-profile delete --id <UUID>
```

## Examples

### List all orgProfile records

```bash
agentic-db org-profile list
```

### Create a orgProfile

```bash
agentic-db org-profile create --name <String> --slug <String> [--description <String>] [--permissions <BitString>] [--isSystem <Boolean>] [--isDefault <Boolean>] [--entityId <UUID>]
```

### Get a orgProfile by id

```bash
agentic-db org-profile get --id <value>
```
