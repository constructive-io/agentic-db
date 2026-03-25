# appProfileDefinitionGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppProfileDefinitionGrant records via agentic-db CLI

## Usage

```bash
agentic-db app-profile-definition-grant list
agentic-db app-profile-definition-grant get --id <UUID>
agentic-db app-profile-definition-grant create --profileId <UUID> --permissionId <UUID> [--grantorId <UUID>] [--isGrant <Boolean>]
agentic-db app-profile-definition-grant update --id <UUID> [--profileId <UUID>] [--permissionId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>]
agentic-db app-profile-definition-grant delete --id <UUID>
```

## Examples

### List all appProfileDefinitionGrant records

```bash
agentic-db app-profile-definition-grant list
```

### Create a appProfileDefinitionGrant

```bash
agentic-db app-profile-definition-grant create --profileId <UUID> --permissionId <UUID> [--grantorId <UUID>] [--isGrant <Boolean>]
```

### Get a appProfileDefinitionGrant by id

```bash
agentic-db app-profile-definition-grant get --id <value>
```
