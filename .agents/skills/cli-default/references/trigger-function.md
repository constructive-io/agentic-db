# triggerFunction

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TriggerFunction records via agentic-db CLI

## Usage

```bash
agentic-db trigger-function list
agentic-db trigger-function get --id <UUID>
agentic-db trigger-function create --databaseId <UUID> --name <String> [--code <String>]
agentic-db trigger-function update --id <UUID> [--databaseId <UUID>] [--name <String>] [--code <String>]
agentic-db trigger-function delete --id <UUID>
```

## Examples

### List all triggerFunction records

```bash
agentic-db trigger-function list
```

### Create a triggerFunction

```bash
agentic-db trigger-function create --databaseId <UUID> --name <String> [--code <String>]
```

### Get a triggerFunction by id

```bash
agentic-db trigger-function get --id <value>
```
