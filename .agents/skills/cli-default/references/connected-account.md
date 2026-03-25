# connectedAccount

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ConnectedAccount records via agentic-db CLI

## Usage

```bash
agentic-db connected-account list
agentic-db connected-account get --id <UUID>
agentic-db connected-account create --service <String> --identifier <String> --details <JSON> [--ownerId <UUID>] [--isVerified <Boolean>]
agentic-db connected-account update --id <UUID> [--ownerId <UUID>] [--service <String>] [--identifier <String>] [--details <JSON>] [--isVerified <Boolean>]
agentic-db connected-account delete --id <UUID>
```

## Examples

### List all connectedAccount records

```bash
agentic-db connected-account list
```

### Create a connectedAccount

```bash
agentic-db connected-account create --service <String> --identifier <String> --details <JSON> [--ownerId <UUID>] [--isVerified <Boolean>]
```

### Get a connectedAccount by id

```bash
agentic-db connected-account get --id <value>
```
