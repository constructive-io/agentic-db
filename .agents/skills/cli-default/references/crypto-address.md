# cryptoAddress

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CryptoAddress records via agentic-db CLI

## Usage

```bash
agentic-db crypto-address list
agentic-db crypto-address get --id <UUID>
agentic-db crypto-address create --address <String> [--ownerId <UUID>] [--isVerified <Boolean>] [--isPrimary <Boolean>]
agentic-db crypto-address update --id <UUID> [--ownerId <UUID>] [--address <String>] [--isVerified <Boolean>] [--isPrimary <Boolean>]
agentic-db crypto-address delete --id <UUID>
```

## Examples

### List all cryptoAddress records

```bash
agentic-db crypto-address list
```

### Create a cryptoAddress

```bash
agentic-db crypto-address create --address <String> [--ownerId <UUID>] [--isVerified <Boolean>] [--isPrimary <Boolean>]
```

### Get a cryptoAddress by id

```bash
agentic-db crypto-address get --id <value>
```
