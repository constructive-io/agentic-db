# cryptoAuthModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CryptoAuthModule records via agentic-db CLI

## Usage

```bash
agentic-db crypto-auth-module list
agentic-db crypto-auth-module get --id <UUID>
agentic-db crypto-auth-module create --databaseId <UUID> --userField <String> [--schemaId <UUID>] [--usersTableId <UUID>] [--secretsTableId <UUID>] [--sessionsTableId <UUID>] [--sessionCredentialsTableId <UUID>] [--addressesTableId <UUID>] [--cryptoNetwork <String>] [--signInRequestChallenge <String>] [--signInRecordFailure <String>] [--signUpWithKey <String>] [--signInWithChallenge <String>]
agentic-db crypto-auth-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--usersTableId <UUID>] [--secretsTableId <UUID>] [--sessionsTableId <UUID>] [--sessionCredentialsTableId <UUID>] [--addressesTableId <UUID>] [--userField <String>] [--cryptoNetwork <String>] [--signInRequestChallenge <String>] [--signInRecordFailure <String>] [--signUpWithKey <String>] [--signInWithChallenge <String>]
agentic-db crypto-auth-module delete --id <UUID>
```

## Examples

### List all cryptoAuthModule records

```bash
agentic-db crypto-auth-module list
```

### Create a cryptoAuthModule

```bash
agentic-db crypto-auth-module create --databaseId <UUID> --userField <String> [--schemaId <UUID>] [--usersTableId <UUID>] [--secretsTableId <UUID>] [--sessionsTableId <UUID>] [--sessionCredentialsTableId <UUID>] [--addressesTableId <UUID>] [--cryptoNetwork <String>] [--signInRequestChallenge <String>] [--signInRecordFailure <String>] [--signUpWithKey <String>] [--signInWithChallenge <String>]
```

### Get a cryptoAuthModule by id

```bash
agentic-db crypto-auth-module get --id <value>
```
