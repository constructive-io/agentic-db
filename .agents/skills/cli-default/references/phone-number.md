# phoneNumber

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for PhoneNumber records via agentic-db CLI

## Usage

```bash
agentic-db phone-number list
agentic-db phone-number get --id <UUID>
agentic-db phone-number create --cc <String> --number <String> [--ownerId <UUID>] [--isVerified <Boolean>] [--isPrimary <Boolean>]
agentic-db phone-number update --id <UUID> [--ownerId <UUID>] [--cc <String>] [--number <String>] [--isVerified <Boolean>] [--isPrimary <Boolean>]
agentic-db phone-number delete --id <UUID>
```

## Examples

### List all phoneNumber records

```bash
agentic-db phone-number list
```

### Create a phoneNumber

```bash
agentic-db phone-number create --cc <String> --number <String> [--ownerId <UUID>] [--isVerified <Boolean>] [--isPrimary <Boolean>]
```

### Get a phoneNumber by id

```bash
agentic-db phone-number get --id <value>
```
