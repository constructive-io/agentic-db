# appAchievement

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppAchievement records via agentic-db CLI

## Usage

```bash
agentic-db app-achievement list
agentic-db app-achievement get --id <UUID>
agentic-db app-achievement create --name <String> [--actorId <UUID>] [--count <Int>]
agentic-db app-achievement update --id <UUID> [--actorId <UUID>] [--name <String>] [--count <Int>]
agentic-db app-achievement delete --id <UUID>
```

## Examples

### List all appAchievement records

```bash
agentic-db app-achievement list
```

### Create a appAchievement

```bash
agentic-db app-achievement create --name <String> [--actorId <UUID>] [--count <Int>]
```

### Get a appAchievement by id

```bash
agentic-db app-achievement get --id <value>
```
