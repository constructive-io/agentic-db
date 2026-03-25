# orgProfileGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgProfileGrant records via agentic-db CLI

## Usage

```bash
agentic-db org-profile-grant list
agentic-db org-profile-grant get --id <UUID>
agentic-db org-profile-grant create --membershipId <UUID> [--profileId <UUID>] [--entityId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>]
agentic-db org-profile-grant update --id <UUID> [--membershipId <UUID>] [--profileId <UUID>] [--entityId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>]
agentic-db org-profile-grant delete --id <UUID>
```

## Examples

### List all orgProfileGrant records

```bash
agentic-db org-profile-grant list
```

### Create a orgProfileGrant

```bash
agentic-db org-profile-grant create --membershipId <UUID> [--profileId <UUID>] [--entityId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>]
```

### Get a orgProfileGrant by id

```bash
agentic-db org-profile-grant get --id <value>
```
