# integration

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Integration records via agentic-db CLI

## Usage

```bash
agentic-db integration list
agentic-db integration get --id <value>
agentic-db integration create --entityId <value> --name <value> --provider <value> --nameTrgmSimilarity <value> --providerTrgmSimilarity <value> --typeTrgmSimilarity <value> --credentialsRefTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>]
agentic-db integration update --id <value> [--entityId <value>] [--name <value>] [--provider <value>] [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>] [--nameTrgmSimilarity <value>] [--providerTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--credentialsRefTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--searchScore <value>]
agentic-db integration delete --id <value>
```

## Examples

### List all integration records

```bash
agentic-db integration list
```

### Create a integration

```bash
agentic-db integration create --entityId <value> --name <value> --provider <value> --nameTrgmSimilarity <value> --providerTrgmSimilarity <value> --typeTrgmSimilarity <value> --credentialsRefTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>]
```

### Get a integration by id

```bash
agentic-db integration get --id <value>
```
