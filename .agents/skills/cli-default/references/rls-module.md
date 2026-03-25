# rlsModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RlsModule records via agentic-db CLI

## Usage

```bash
agentic-db rls-module list
agentic-db rls-module get --id <UUID>
agentic-db rls-module create --databaseId <UUID> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--sessionCredentialsTableId <UUID>] [--sessionsTableId <UUID>] [--usersTableId <UUID>] [--authenticate <String>] [--authenticateStrict <String>] [--currentRole <String>] [--currentRoleId <String>]
agentic-db rls-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--privateSchemaId <UUID>] [--sessionCredentialsTableId <UUID>] [--sessionsTableId <UUID>] [--usersTableId <UUID>] [--authenticate <String>] [--authenticateStrict <String>] [--currentRole <String>] [--currentRoleId <String>]
agentic-db rls-module delete --id <UUID>
```

## Examples

### List all rlsModule records

```bash
agentic-db rls-module list
```

### Create a rlsModule

```bash
agentic-db rls-module create --databaseId <UUID> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--sessionCredentialsTableId <UUID>] [--sessionsTableId <UUID>] [--usersTableId <UUID>] [--authenticate <String>] [--authenticateStrict <String>] [--currentRole <String>] [--currentRoleId <String>]
```

### Get a rlsModule by id

```bash
agentic-db rls-module get --id <value>
```
