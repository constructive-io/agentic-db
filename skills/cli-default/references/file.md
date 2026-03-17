# file

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for File records via agentic-db CLI

## Usage

```bash
agentic-db file list
agentic-db file get --id <value>
agentic-db file create --entityId <value> --path <value> --pathTrgmSimilarity <value> --languageTrgmSimilarity <value> --hashTrgmSimilarity <value> --searchScore <value> [--repositoryId <value>] [--language <value>] [--hash <value>]
agentic-db file update --id <value> [--entityId <value>] [--repositoryId <value>] [--path <value>] [--language <value>] [--hash <value>] [--pathTrgmSimilarity <value>] [--languageTrgmSimilarity <value>] [--hashTrgmSimilarity <value>] [--searchScore <value>]
agentic-db file delete --id <value>
```

## Examples

### List all file records

```bash
agentic-db file list
```

### Create a file

```bash
agentic-db file create --entityId <value> --path <value> --pathTrgmSimilarity <value> --languageTrgmSimilarity <value> --hashTrgmSimilarity <value> --searchScore <value> [--repositoryId <value>] [--language <value>] [--hash <value>]
```

### Get a file by id

```bash
agentic-db file get --id <value>
```
