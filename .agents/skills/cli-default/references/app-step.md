# appStep

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppStep records via agentic-db CLI

## Usage

```bash
agentic-db app-step list
agentic-db app-step get --id <UUID>
agentic-db app-step create --name <String> [--actorId <UUID>] [--count <Int>]
agentic-db app-step update --id <UUID> [--actorId <UUID>] [--name <String>] [--count <Int>]
agentic-db app-step delete --id <UUID>
```

## Examples

### List all appStep records

```bash
agentic-db app-step list
```

### Create a appStep

```bash
agentic-db app-step create --name <String> [--actorId <UUID>] [--count <Int>]
```

### Get a appStep by id

```bash
agentic-db app-step get --id <value>
```
