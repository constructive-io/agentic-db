# appProfileGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppProfileGrant records via agentic-db CLI

## Usage

```bash
agentic-db app-profile-grant list
agentic-db app-profile-grant get --id <UUID>
agentic-db app-profile-grant create --membershipId <UUID> [--profileId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>]
agentic-db app-profile-grant update --id <UUID> [--membershipId <UUID>] [--profileId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>]
agentic-db app-profile-grant delete --id <UUID>
```

## Examples

### List all appProfileGrant records

```bash
agentic-db app-profile-grant list
```

### Create a appProfileGrant

```bash
agentic-db app-profile-grant create --membershipId <UUID> [--profileId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>]
```

### Get a appProfileGrant by id

```bash
agentic-db app-profile-grant get --id <value>
```
