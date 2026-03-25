# orgProfileDefinitionGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgProfileDefinitionGrant records via agentic-db CLI

## Usage

```bash
agentic-db org-profile-definition-grant list
agentic-db org-profile-definition-grant get --id <UUID>
agentic-db org-profile-definition-grant create --profileId <UUID> --permissionId <UUID> [--grantorId <UUID>] [--isGrant <Boolean>]
agentic-db org-profile-definition-grant update --id <UUID> [--profileId <UUID>] [--permissionId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>]
agentic-db org-profile-definition-grant delete --id <UUID>
```

## Examples

### List all orgProfileDefinitionGrant records

```bash
agentic-db org-profile-definition-grant list
```

### Create a orgProfileDefinitionGrant

```bash
agentic-db org-profile-definition-grant create --profileId <UUID> --permissionId <UUID> [--grantorId <UUID>] [--isGrant <Boolean>]
```

### Get a orgProfileDefinitionGrant by id

```bash
agentic-db org-profile-definition-grant get --id <value>
```
