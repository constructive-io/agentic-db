# attachment

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Attachment records via agent-db CLI

## Usage

```bash
agent-db attachment list
agent-db attachment get --id <value>
agent-db attachment create --entityId <value> --url <value> --urlTrgmSimilarity <value> --filenameTrgmSimilarity <value> --mimeTypeTrgmSimilarity <value> --attachableTypeTrgmSimilarity <value> --searchScore <value> [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>]
agent-db attachment update --id <value> [--entityId <value>] [--url <value>] [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>] [--urlTrgmSimilarity <value>] [--filenameTrgmSimilarity <value>] [--mimeTypeTrgmSimilarity <value>] [--attachableTypeTrgmSimilarity <value>] [--searchScore <value>]
agent-db attachment delete --id <value>
```

## Examples

### List all attachment records

```bash
agent-db attachment list
```

### Create a attachment

```bash
agent-db attachment create --entityId <value> --url <value> --urlTrgmSimilarity <value> --filenameTrgmSimilarity <value> --mimeTypeTrgmSimilarity <value> --attachableTypeTrgmSimilarity <value> --searchScore <value> [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>]
```

### Get a attachment by id

```bash
agent-db attachment get --id <value>
```
