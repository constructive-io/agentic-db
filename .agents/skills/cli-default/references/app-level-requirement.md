# appLevelRequirement

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppLevelRequirement records via agentic-db CLI

## Usage

```bash
agentic-db app-level-requirement list
agentic-db app-level-requirement get --id <UUID>
agentic-db app-level-requirement create --name <String> --level <String> [--description <String>] [--requiredCount <Int>] [--priority <Int>]
agentic-db app-level-requirement update --id <UUID> [--name <String>] [--level <String>] [--description <String>] [--requiredCount <Int>] [--priority <Int>]
agentic-db app-level-requirement delete --id <UUID>
```

## Examples

### List all appLevelRequirement records

```bash
agentic-db app-level-requirement list
```

### Create a appLevelRequirement

```bash
agentic-db app-level-requirement create --name <String> --level <String> [--description <String>] [--requiredCount <Int>] [--priority <Int>]
```

### Get a appLevelRequirement by id

```bash
agentic-db app-level-requirement get --id <value>
```
