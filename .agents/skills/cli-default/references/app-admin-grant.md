# appAdminGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppAdminGrant records via agentic-db CLI

## Usage

```bash
agentic-db app-admin-grant list
agentic-db app-admin-grant get --id <UUID>
agentic-db app-admin-grant create --actorId <UUID> [--isGrant <Boolean>] [--grantorId <UUID>]
agentic-db app-admin-grant update --id <UUID> [--isGrant <Boolean>] [--actorId <UUID>] [--grantorId <UUID>]
agentic-db app-admin-grant delete --id <UUID>
```

## Examples

### List all appAdminGrant records

```bash
agentic-db app-admin-grant list
```

### Create a appAdminGrant

```bash
agentic-db app-admin-grant create --actorId <UUID> [--isGrant <Boolean>] [--grantorId <UUID>]
```

### Get a appAdminGrant by id

```bash
agentic-db app-admin-grant get --id <value>
```
