# orgMembershipDefault

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgMembershipDefault records via agentic-db CLI

## Usage

```bash
agentic-db org-membership-default list
agentic-db org-membership-default get --id <UUID>
agentic-db org-membership-default create --entityId <UUID> [--createdBy <UUID>] [--updatedBy <UUID>] [--isApproved <Boolean>] [--deleteMemberCascadeGroups <Boolean>] [--createGroupsCascadeMembers <Boolean>]
agentic-db org-membership-default update --id <UUID> [--createdBy <UUID>] [--updatedBy <UUID>] [--isApproved <Boolean>] [--entityId <UUID>] [--deleteMemberCascadeGroups <Boolean>] [--createGroupsCascadeMembers <Boolean>]
agentic-db org-membership-default delete --id <UUID>
```

## Examples

### List all orgMembershipDefault records

```bash
agentic-db org-membership-default list
```

### Create a orgMembershipDefault

```bash
agentic-db org-membership-default create --entityId <UUID> [--createdBy <UUID>] [--updatedBy <UUID>] [--isApproved <Boolean>] [--deleteMemberCascadeGroups <Boolean>] [--createGroupsCascadeMembers <Boolean>]
```

### Get a orgMembershipDefault by id

```bash
agentic-db org-membership-default get --id <value>
```
