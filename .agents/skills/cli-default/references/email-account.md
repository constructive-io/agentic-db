# emailAccount

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailAccount records via agentic-db CLI

## Usage

```bash
agentic-db email-account list
agentic-db email-account get --id <UUID>
agentic-db email-account create --entityId <UUID> --email <String> [--provider <String>] [--syncState <JSON>]
agentic-db email-account update --id <UUID> [--entityId <UUID>] [--email <String>] [--provider <String>] [--syncState <JSON>]
agentic-db email-account delete --id <UUID>
```

## Examples

### List all emailAccount records

```bash
agentic-db email-account list
```

### Create a emailAccount

```bash
agentic-db email-account create --entityId <UUID> --email <String> [--provider <String>] [--syncState <JSON>]
```

### Get a emailAccount by id

```bash
agentic-db email-account get --id <value>
```
