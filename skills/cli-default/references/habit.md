# habit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Habit records via agentic-db CLI

## Usage

```bash
agentic-db habit list
agentic-db habit get --id <value>
agentic-db habit create --entityId <value> --name <value> --nameTrgmSimilarity <value> --frequencyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>]
agentic-db habit update --id <value> [--entityId <value>] [--name <value>] [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>] [--nameTrgmSimilarity <value>] [--frequencyTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--searchScore <value>]
agentic-db habit delete --id <value>
```

## Examples

### List all habit records

```bash
agentic-db habit list
```

### Create a habit

```bash
agentic-db habit create --entityId <value> --name <value> --nameTrgmSimilarity <value> --frequencyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--frequency <value>] [--targetCount <value>] [--currentStreak <value>] [--bestStreak <value>] [--category <value>] [--tags <value>]
```

### Get a habit by id

```bash
agentic-db habit get --id <value>
```
