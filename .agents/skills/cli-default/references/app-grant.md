# appGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppGrant records via agentic-db CLI

## Usage

```bash
agentic-db app-grant list
agentic-db app-grant get --id <UUID>
agentic-db app-grant create --actorId <UUID> [--permissions <BitString>] [--isGrant <Boolean>] [--grantorId <UUID>]
agentic-db app-grant update --id <UUID> [--permissions <BitString>] [--isGrant <Boolean>] [--actorId <UUID>] [--grantorId <UUID>]
agentic-db app-grant delete --id <UUID>
```

## Examples

### List all appGrant records

```bash
agentic-db app-grant list
```

### Create a appGrant

```bash
agentic-db app-grant create --actorId <UUID> [--permissions <BitString>] [--isGrant <Boolean>] [--grantorId <UUID>]
```

### Get a appGrant by id

```bash
agentic-db app-grant get --id <value>
```
