# emailAccount

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailAccount records via agent-db CLI

## Usage

```bash
agent-db email-account list
agent-db email-account get --id <value>
agent-db email-account create --entityId <value> --email <value> --emailTrgmSimilarity <value> --providerTrgmSimilarity <value> --searchScore <value> [--provider <value>] [--syncState <value>]
agent-db email-account update --id <value> [--entityId <value>] [--email <value>] [--provider <value>] [--syncState <value>] [--emailTrgmSimilarity <value>] [--providerTrgmSimilarity <value>] [--searchScore <value>]
agent-db email-account delete --id <value>
```

## Examples

### List all emailAccount records

```bash
agent-db email-account list
```

### Create a emailAccount

```bash
agent-db email-account create --entityId <value> --email <value> --emailTrgmSimilarity <value> --providerTrgmSimilarity <value> --searchScore <value> [--provider <value>] [--syncState <value>]
```

### Get a emailAccount by id

```bash
agent-db email-account get --id <value>
```
