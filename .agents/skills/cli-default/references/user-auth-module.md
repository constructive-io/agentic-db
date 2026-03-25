# userAuthModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for UserAuthModule records via agentic-db CLI

## Usage

```bash
agentic-db user-auth-module list
agentic-db user-auth-module get --id <UUID>
agentic-db user-auth-module create --databaseId <UUID> [--schemaId <UUID>] [--emailsTableId <UUID>] [--usersTableId <UUID>] [--secretsTableId <UUID>] [--encryptedTableId <UUID>] [--sessionsTableId <UUID>] [--sessionCredentialsTableId <UUID>] [--auditsTableId <UUID>] [--auditsTableName <String>] [--signInFunction <String>] [--signUpFunction <String>] [--signOutFunction <String>] [--setPasswordFunction <String>] [--resetPasswordFunction <String>] [--forgotPasswordFunction <String>] [--sendVerificationEmailFunction <String>] [--verifyEmailFunction <String>] [--verifyPasswordFunction <String>] [--checkPasswordFunction <String>] [--sendAccountDeletionEmailFunction <String>] [--deleteAccountFunction <String>] [--signInOneTimeTokenFunction <String>] [--oneTimeTokenFunction <String>] [--extendTokenExpires <String>]
agentic-db user-auth-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--emailsTableId <UUID>] [--usersTableId <UUID>] [--secretsTableId <UUID>] [--encryptedTableId <UUID>] [--sessionsTableId <UUID>] [--sessionCredentialsTableId <UUID>] [--auditsTableId <UUID>] [--auditsTableName <String>] [--signInFunction <String>] [--signUpFunction <String>] [--signOutFunction <String>] [--setPasswordFunction <String>] [--resetPasswordFunction <String>] [--forgotPasswordFunction <String>] [--sendVerificationEmailFunction <String>] [--verifyEmailFunction <String>] [--verifyPasswordFunction <String>] [--checkPasswordFunction <String>] [--sendAccountDeletionEmailFunction <String>] [--deleteAccountFunction <String>] [--signInOneTimeTokenFunction <String>] [--oneTimeTokenFunction <String>] [--extendTokenExpires <String>]
agentic-db user-auth-module delete --id <UUID>
```

## Examples

### List all userAuthModule records

```bash
agentic-db user-auth-module list
```

### Create a userAuthModule

```bash
agentic-db user-auth-module create --databaseId <UUID> [--schemaId <UUID>] [--emailsTableId <UUID>] [--usersTableId <UUID>] [--secretsTableId <UUID>] [--encryptedTableId <UUID>] [--sessionsTableId <UUID>] [--sessionCredentialsTableId <UUID>] [--auditsTableId <UUID>] [--auditsTableName <String>] [--signInFunction <String>] [--signUpFunction <String>] [--signOutFunction <String>] [--setPasswordFunction <String>] [--resetPasswordFunction <String>] [--forgotPasswordFunction <String>] [--sendVerificationEmailFunction <String>] [--verifyEmailFunction <String>] [--verifyPasswordFunction <String>] [--checkPasswordFunction <String>] [--sendAccountDeletionEmailFunction <String>] [--deleteAccountFunction <String>] [--signInOneTimeTokenFunction <String>] [--oneTimeTokenFunction <String>] [--extendTokenExpires <String>]
```

### Get a userAuthModule by id

```bash
agentic-db user-auth-module get --id <value>
```
