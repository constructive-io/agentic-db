# habit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Habit records via agent-db CLI

## Usage

```bash
agent-db habit list
agent-db habit get --id <value>
agent-db habit create --entityId <value> --name <value> --nameTrgmSimilarity <value> --frequencyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>]
agent-db habit update --id <value> [--entityId <value>] [--name <value>] [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>] [--nameTrgmSimilarity <value>] [--frequencyTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--searchScore <value>]
agent-db habit delete --id <value>
```

## Examples

### List all habit records

```bash
agent-db habit list
```

### Create a habit

```bash
agent-db habit create --entityId <value> --name <value> --nameTrgmSimilarity <value> --frequencyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>]
```

### Get a habit by id

```bash
agent-db habit get --id <value>
```
