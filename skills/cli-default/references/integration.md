# integration

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Integration records via agent-db CLI

## Usage

```bash
agent-db integration list
agent-db integration get --id <value>
agent-db integration create --entityId <value> --name <value> --provider <value> --nameTrgmSimilarity <value> --providerTrgmSimilarity <value> --typeTrgmSimilarity <value> --credentialsRefTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>]
agent-db integration update --id <value> [--entityId <value>] [--name <value>] [--provider <value>] [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>] [--nameTrgmSimilarity <value>] [--providerTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--credentialsRefTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--searchScore <value>]
agent-db integration delete --id <value>
```

## Examples

### List all integration records

```bash
agent-db integration list
```

### Create a integration

```bash
agent-db integration create --entityId <value> --name <value> --provider <value> --nameTrgmSimilarity <value> --providerTrgmSimilarity <value> --typeTrgmSimilarity <value> --credentialsRefTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>]
```

### Get a integration by id

```bash
agent-db integration get --id <value>
```
