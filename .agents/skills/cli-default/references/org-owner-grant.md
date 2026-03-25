# orgOwnerGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgOwnerGrant records via agentic-db CLI

## Usage

```bash
agentic-db org-owner-grant list
agentic-db org-owner-grant get --id <UUID>
agentic-db org-owner-grant create --actorId <UUID> --entityId <UUID> [--isGrant <Boolean>] [--grantorId <UUID>]
agentic-db org-owner-grant update --id <UUID> [--isGrant <Boolean>] [--actorId <UUID>] [--entityId <UUID>] [--grantorId <UUID>]
agentic-db org-owner-grant delete --id <UUID>
```

## Examples

### List all orgOwnerGrant records

```bash
agentic-db org-owner-grant list
```

### Create a orgOwnerGrant

```bash
agentic-db org-owner-grant create --actorId <UUID> --entityId <UUID> [--isGrant <Boolean>] [--grantorId <UUID>]
```

### Get a orgOwnerGrant by id

```bash
agentic-db org-owner-grant get --id <value>
```
