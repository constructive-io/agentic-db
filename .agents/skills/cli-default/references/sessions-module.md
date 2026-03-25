# sessionsModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SessionsModule records via agentic-db CLI

## Usage

```bash
agentic-db sessions-module list
agentic-db sessions-module get --id <UUID>
agentic-db sessions-module create --databaseId <UUID> [--schemaId <UUID>] [--sessionsTableId <UUID>] [--sessionCredentialsTableId <UUID>] [--authSettingsTableId <UUID>] [--usersTableId <UUID>] [--sessionsDefaultExpiration <Interval>] [--sessionsTable <String>] [--sessionCredentialsTable <String>] [--authSettingsTable <String>]
agentic-db sessions-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--sessionsTableId <UUID>] [--sessionCredentialsTableId <UUID>] [--authSettingsTableId <UUID>] [--usersTableId <UUID>] [--sessionsDefaultExpiration <Interval>] [--sessionsTable <String>] [--sessionCredentialsTable <String>] [--authSettingsTable <String>]
agentic-db sessions-module delete --id <UUID>
```

## Examples

### List all sessionsModule records

```bash
agentic-db sessions-module list
```

### Create a sessionsModule

```bash
agentic-db sessions-module create --databaseId <UUID> [--schemaId <UUID>] [--sessionsTableId <UUID>] [--sessionCredentialsTableId <UUID>] [--authSettingsTableId <UUID>] [--usersTableId <UUID>] [--sessionsDefaultExpiration <Interval>] [--sessionsTable <String>] [--sessionCredentialsTable <String>] [--authSettingsTable <String>]
```

### Get a sessionsModule by id

```bash
agentic-db sessions-module get --id <value>
```
