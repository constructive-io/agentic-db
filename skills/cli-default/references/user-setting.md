# userSetting

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for UserSetting records via agent-db CLI

## Usage

```bash
agent-db user-setting list
agent-db user-setting get --id <value>
agent-db user-setting create --entityId <value> --key <value> [--value <value>] [--category <value>]
agent-db user-setting update --id <value> [--entityId <value>] [--key <value>] [--value <value>] [--category <value>]
agent-db user-setting delete --id <value>
```

## Examples

### List all userSetting records

```bash
agent-db user-setting list
```

### Create a userSetting

```bash
agent-db user-setting create --entityId <value> --key <value> [--value <value>] [--category <value>]
```

### Get a userSetting by id

```bash
agent-db user-setting get --id <value>
```
