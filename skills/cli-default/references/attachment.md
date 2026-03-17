# attachment

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Attachment records via agentic-db CLI

## Usage

```bash
agentic-db attachment list
agentic-db attachment get --id <value>
agentic-db attachment create --entityId <value> --url <value> --urlTrgmSimilarity <value> --filenameTrgmSimilarity <value> --mimeTypeTrgmSimilarity <value> --attachableTypeTrgmSimilarity <value> --searchScore <value> [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>]
agentic-db attachment update --id <value> [--entityId <value>] [--url <value>] [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>] [--urlTrgmSimilarity <value>] [--filenameTrgmSimilarity <value>] [--mimeTypeTrgmSimilarity <value>] [--attachableTypeTrgmSimilarity <value>] [--searchScore <value>]
agentic-db attachment delete --id <value>
```

## Examples

### List all attachment records

```bash
agentic-db attachment list
```

### Create a attachment

```bash
agentic-db attachment create --entityId <value> --url <value> --urlTrgmSimilarity <value> --filenameTrgmSimilarity <value> --mimeTypeTrgmSimilarity <value> --attachableTypeTrgmSimilarity <value> --searchScore <value> [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>]
```

### Get a attachment by id

```bash
agentic-db attachment get --id <value>
```
