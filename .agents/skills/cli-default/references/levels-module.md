# levelsModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for LevelsModule records via agentic-db CLI

## Usage

```bash
agentic-db levels-module list
agentic-db levels-module get --id <UUID>
agentic-db levels-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--stepsTableId <UUID>] [--stepsTableName <String>] [--achievementsTableId <UUID>] [--achievementsTableName <String>] [--levelsTableId <UUID>] [--levelsTableName <String>] [--levelRequirementsTableId <UUID>] [--levelRequirementsTableName <String>] [--completedStep <String>] [--incompletedStep <String>] [--tgAchievement <String>] [--tgAchievementToggle <String>] [--tgAchievementToggleBoolean <String>] [--tgAchievementBoolean <String>] [--upsertAchievement <String>] [--tgUpdateAchievements <String>] [--stepsRequired <String>] [--levelAchieved <String>] [--prefix <String>] [--entityTableId <UUID>] [--actorTableId <UUID>]
agentic-db levels-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--privateSchemaId <UUID>] [--stepsTableId <UUID>] [--stepsTableName <String>] [--achievementsTableId <UUID>] [--achievementsTableName <String>] [--levelsTableId <UUID>] [--levelsTableName <String>] [--levelRequirementsTableId <UUID>] [--levelRequirementsTableName <String>] [--completedStep <String>] [--incompletedStep <String>] [--tgAchievement <String>] [--tgAchievementToggle <String>] [--tgAchievementToggleBoolean <String>] [--tgAchievementBoolean <String>] [--upsertAchievement <String>] [--tgUpdateAchievements <String>] [--stepsRequired <String>] [--levelAchieved <String>] [--prefix <String>] [--membershipType <Int>] [--entityTableId <UUID>] [--actorTableId <UUID>]
agentic-db levels-module delete --id <UUID>
```

## Examples

### List all levelsModule records

```bash
agentic-db levels-module list
```

### Create a levelsModule

```bash
agentic-db levels-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--stepsTableId <UUID>] [--stepsTableName <String>] [--achievementsTableId <UUID>] [--achievementsTableName <String>] [--levelsTableId <UUID>] [--levelsTableName <String>] [--levelRequirementsTableId <UUID>] [--levelRequirementsTableName <String>] [--completedStep <String>] [--incompletedStep <String>] [--tgAchievement <String>] [--tgAchievementToggle <String>] [--tgAchievementToggleBoolean <String>] [--tgAchievementBoolean <String>] [--upsertAchievement <String>] [--tgUpdateAchievements <String>] [--stepsRequired <String>] [--levelAchieved <String>] [--prefix <String>] [--entityTableId <UUID>] [--actorTableId <UUID>]
```

### Get a levelsModule by id

```bash
agentic-db levels-module get --id <value>
```
