# habit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Habit records via agentic-db CLI

## Usage

```bash
agentic-db habit list
agentic-db habit get --id <UUID>
agentic-db habit create --entityId <UUID> --name <String> [--frequency <String>] [--targetCount <Int>] [--currentStreak <Int>] [--bestStreak <Int>] [--category <String>] [--tags <String>]
agentic-db habit update --id <UUID> [--entityId <UUID>] [--name <String>] [--frequency <String>] [--targetCount <Int>] [--currentStreak <Int>] [--bestStreak <Int>] [--category <String>] [--tags <String>]
agentic-db habit delete --id <UUID>
```

## Examples

### List all habit records

```bash
agentic-db habit list
```

### Create a habit

```bash
agentic-db habit create --entityId <UUID> --name <String> [--frequency <String>] [--targetCount <Int>] [--currentStreak <Int>] [--bestStreak <Int>] [--category <String>] [--tags <String>]
```

### Get a habit by id

```bash
agentic-db habit get --id <value>
```
