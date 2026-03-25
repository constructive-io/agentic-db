# appLimit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppLimit records via agentic-db CLI

## Usage

```bash
agentic-db app-limit list
agentic-db app-limit get --id <UUID>
agentic-db app-limit create --actorId <UUID> [--name <String>] [--num <Int>] [--max <Int>]
agentic-db app-limit update --id <UUID> [--name <String>] [--actorId <UUID>] [--num <Int>] [--max <Int>]
agentic-db app-limit delete --id <UUID>
```

## Examples

### List all appLimit records

```bash
agentic-db app-limit list
```

### Create a appLimit

```bash
agentic-db app-limit create --actorId <UUID> [--name <String>] [--num <Int>] [--max <Int>]
```

### Get a appLimit by id

```bash
agentic-db app-limit get --id <value>
```
