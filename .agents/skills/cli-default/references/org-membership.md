# orgMembership

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgMembership records via agentic-db CLI

## Usage

```bash
agentic-db org-membership list
agentic-db org-membership get --id <UUID>
agentic-db org-membership create --actorId <UUID> --entityId <UUID> [--createdBy <UUID>] [--updatedBy <UUID>] [--isApproved <Boolean>] [--isBanned <Boolean>] [--isDisabled <Boolean>] [--isActive <Boolean>] [--isOwner <Boolean>] [--isAdmin <Boolean>] [--permissions <BitString>] [--granted <BitString>] [--profileId <UUID>]
agentic-db org-membership update --id <UUID> [--createdBy <UUID>] [--updatedBy <UUID>] [--isApproved <Boolean>] [--isBanned <Boolean>] [--isDisabled <Boolean>] [--isActive <Boolean>] [--isOwner <Boolean>] [--isAdmin <Boolean>] [--permissions <BitString>] [--granted <BitString>] [--actorId <UUID>] [--entityId <UUID>] [--profileId <UUID>]
agentic-db org-membership delete --id <UUID>
```

## Examples

### List all orgMembership records

```bash
agentic-db org-membership list
```

### Create a orgMembership

```bash
agentic-db org-membership create --actorId <UUID> --entityId <UUID> [--createdBy <UUID>] [--updatedBy <UUID>] [--isApproved <Boolean>] [--isBanned <Boolean>] [--isDisabled <Boolean>] [--isActive <Boolean>] [--isOwner <Boolean>] [--isAdmin <Boolean>] [--permissions <BitString>] [--granted <BitString>] [--profileId <UUID>]
```

### Get a orgMembership by id

```bash
agentic-db org-membership get --id <value>
```
