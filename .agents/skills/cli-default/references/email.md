# email

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Email records via agentic-db CLI

## Usage

```bash
agentic-db email list
agentic-db email get --id <UUID>
agentic-db email create --email <Email> [--ownerId <UUID>] [--isVerified <Boolean>] [--isPrimary <Boolean>]
agentic-db email update --id <UUID> [--ownerId <UUID>] [--email <Email>] [--isVerified <Boolean>] [--isPrimary <Boolean>]
agentic-db email delete --id <UUID>
```

## Examples

### List all email records

```bash
agentic-db email list
```

### Create a email

```bash
agentic-db email create --email <Email> [--ownerId <UUID>] [--isVerified <Boolean>] [--isPrimary <Boolean>]
```

### Get a email by id

```bash
agentic-db email get --id <value>
```
