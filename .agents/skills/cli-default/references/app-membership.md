# appMembership

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppMembership records via agentic-db CLI

## Usage

```bash
agentic-db app-membership list
agentic-db app-membership get --id <UUID>
agentic-db app-membership create --actorId <UUID> [--createdBy <UUID>] [--updatedBy <UUID>] [--isApproved <Boolean>] [--isBanned <Boolean>] [--isDisabled <Boolean>] [--isVerified <Boolean>] [--isActive <Boolean>] [--isOwner <Boolean>] [--isAdmin <Boolean>] [--permissions <BitString>] [--granted <BitString>] [--profileId <UUID>]
agentic-db app-membership update --id <UUID> [--createdBy <UUID>] [--updatedBy <UUID>] [--isApproved <Boolean>] [--isBanned <Boolean>] [--isDisabled <Boolean>] [--isVerified <Boolean>] [--isActive <Boolean>] [--isOwner <Boolean>] [--isAdmin <Boolean>] [--permissions <BitString>] [--granted <BitString>] [--actorId <UUID>] [--profileId <UUID>]
agentic-db app-membership delete --id <UUID>
```

## Examples

### List all appMembership records

```bash
agentic-db app-membership list
```

### Create a appMembership

```bash
agentic-db app-membership create --actorId <UUID> [--createdBy <UUID>] [--updatedBy <UUID>] [--isApproved <Boolean>] [--isBanned <Boolean>] [--isDisabled <Boolean>] [--isVerified <Boolean>] [--isActive <Boolean>] [--isOwner <Boolean>] [--isAdmin <Boolean>] [--permissions <BitString>] [--granted <BitString>] [--profileId <UUID>]
```

### Get a appMembership by id

```bash
agentic-db app-membership get --id <value>
```
