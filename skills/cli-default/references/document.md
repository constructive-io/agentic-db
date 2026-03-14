# document

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Document records via agent-os CLI

## Usage

```bash
agent-os document list
agent-os document get --id <value>
agent-os document create --entityId <value> --title <value> --searchTsvRank <value> --embeddingDistance <value> [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
agent-os document update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
agent-os document delete --id <value>
```

## Examples

### List all document records

```bash
agent-os document list
```

### Create a document

```bash
agent-os document create --entityId <value> --title <value> --searchTsvRank <value> --embeddingDistance <value> [--url <value>] [--content <value>] [--sourceType <value>] [--isRead <value>] [--savedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
```

### Get a document by id

```bash
agent-os document get --id <value>
```
