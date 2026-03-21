# userSetting

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for UserSetting records via agentic-db CLI

## Usage

```bash
agentic-db user-setting list
agentic-db user-setting get --id <UUID>
agentic-db user-setting create --entityId <UUID> --key <String> [--value <JSON>] [--category <String>]
agentic-db user-setting update --id <UUID> [--entityId <UUID>] [--key <String>] [--value <JSON>] [--category <String>]
agentic-db user-setting delete --id <UUID>
```

## Examples

### List all userSetting records

```bash
agentic-db user-setting list
```

### Create a userSetting

```bash
agentic-db user-setting create --entityId <UUID> --key <String> [--value <JSON>] [--category <String>]
```

### Get a userSetting by id

```bash
agentic-db user-setting get --id <value>
```
