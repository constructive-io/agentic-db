# habit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Habit records via agent-os CLI

## Usage

```bash
agent-os habit list
agent-os habit get --id <value>
agent-os habit create --entityId <value> --name <value> [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>]
agent-os habit update --id <value> [--entityId <value>] [--name <value>] [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>]
agent-os habit delete --id <value>
```

## Examples

### List all habit records

```bash
agent-os habit list
```

### Create a habit

```bash
agent-os habit create --entityId <value> --name <value> [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>]
```

### Get a habit by id

```bash
agent-os habit get --id <value>
```
