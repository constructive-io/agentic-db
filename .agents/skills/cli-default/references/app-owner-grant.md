# appOwnerGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppOwnerGrant records via agentic-db CLI

## Usage

```bash
agentic-db app-owner-grant list
agentic-db app-owner-grant get --id <UUID>
agentic-db app-owner-grant create --actorId <UUID> [--isGrant <Boolean>] [--grantorId <UUID>]
agentic-db app-owner-grant update --id <UUID> [--isGrant <Boolean>] [--actorId <UUID>] [--grantorId <UUID>]
agentic-db app-owner-grant delete --id <UUID>
```

## Examples

### List all appOwnerGrant records

```bash
agentic-db app-owner-grant list
```

### Create a appOwnerGrant

```bash
agentic-db app-owner-grant create --actorId <UUID> [--isGrant <Boolean>] [--grantorId <UUID>]
```

### Get a appOwnerGrant by id

```bash
agentic-db app-owner-grant get --id <value>
```
