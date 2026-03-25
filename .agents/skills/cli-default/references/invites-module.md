# invitesModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for InvitesModule records via agentic-db CLI

## Usage

```bash
agentic-db invites-module list
agentic-db invites-module get --id <UUID>
agentic-db invites-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--emailsTableId <UUID>] [--usersTableId <UUID>] [--invitesTableId <UUID>] [--claimedInvitesTableId <UUID>] [--invitesTableName <String>] [--claimedInvitesTableName <String>] [--submitInviteCodeFunction <String>] [--prefix <String>] [--entityTableId <UUID>]
agentic-db invites-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--privateSchemaId <UUID>] [--emailsTableId <UUID>] [--usersTableId <UUID>] [--invitesTableId <UUID>] [--claimedInvitesTableId <UUID>] [--invitesTableName <String>] [--claimedInvitesTableName <String>] [--submitInviteCodeFunction <String>] [--prefix <String>] [--membershipType <Int>] [--entityTableId <UUID>]
agentic-db invites-module delete --id <UUID>
```

## Examples

### List all invitesModule records

```bash
agentic-db invites-module list
```

### Create a invitesModule

```bash
agentic-db invites-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--emailsTableId <UUID>] [--usersTableId <UUID>] [--invitesTableId <UUID>] [--claimedInvitesTableId <UUID>] [--invitesTableName <String>] [--claimedInvitesTableName <String>] [--submitInviteCodeFunction <String>] [--prefix <String>] [--entityTableId <UUID>]
```

### Get a invitesModule by id

```bash
agentic-db invites-module get --id <value>
```
