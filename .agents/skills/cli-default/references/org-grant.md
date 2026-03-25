# orgGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgGrant records via agentic-db CLI

## Usage

```bash
agentic-db org-grant list
agentic-db org-grant get --id <UUID>
agentic-db org-grant create --actorId <UUID> --entityId <UUID> [--permissions <BitString>] [--isGrant <Boolean>] [--grantorId <UUID>]
agentic-db org-grant update --id <UUID> [--permissions <BitString>] [--isGrant <Boolean>] [--actorId <UUID>] [--entityId <UUID>] [--grantorId <UUID>]
agentic-db org-grant delete --id <UUID>
```

## Examples

### List all orgGrant records

```bash
agentic-db org-grant list
```

### Create a orgGrant

```bash
agentic-db org-grant create --actorId <UUID> --entityId <UUID> [--permissions <BitString>] [--isGrant <Boolean>] [--grantorId <UUID>]
```

### Get a orgGrant by id

```bash
agentic-db org-grant get --id <value>
```
