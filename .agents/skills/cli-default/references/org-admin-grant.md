# orgAdminGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgAdminGrant records via agentic-db CLI

## Usage

```bash
agentic-db org-admin-grant list
agentic-db org-admin-grant get --id <UUID>
agentic-db org-admin-grant create --actorId <UUID> --entityId <UUID> [--isGrant <Boolean>] [--grantorId <UUID>]
agentic-db org-admin-grant update --id <UUID> [--isGrant <Boolean>] [--actorId <UUID>] [--entityId <UUID>] [--grantorId <UUID>]
agentic-db org-admin-grant delete --id <UUID>
```

## Examples

### List all orgAdminGrant records

```bash
agentic-db org-admin-grant list
```

### Create a orgAdminGrant

```bash
agentic-db org-admin-grant create --actorId <UUID> --entityId <UUID> [--isGrant <Boolean>] [--grantorId <UUID>]
```

### Get a orgAdminGrant by id

```bash
agentic-db org-admin-grant get --id <value>
```
