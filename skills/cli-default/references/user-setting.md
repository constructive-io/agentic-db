# userSetting

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for UserSetting records via agentic-db CLI

## Usage

```bash
agentic-db user-setting list
agentic-db user-setting get --id <value>
agentic-db user-setting create --entityId <value> --key <value> --keyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--value <value>] [--category <value>]
agentic-db user-setting update --id <value> [--entityId <value>] [--key <value>] [--value <value>] [--category <value>] [--keyTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--searchScore <value>]
agentic-db user-setting delete --id <value>
```

## Examples

### List all userSetting records

```bash
agentic-db user-setting list
```

### Create a userSetting

```bash
agentic-db user-setting create --entityId <value> --key <value> --keyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--value <value>] [--category <value>]
```

### Get a userSetting by id

```bash
agentic-db user-setting get --id <value>
```
