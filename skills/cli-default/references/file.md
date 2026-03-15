# file

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for File records via agent-db CLI

## Usage

```bash
agent-db file list
agent-db file get --id <value>
agent-db file create --entityId <value> --path <value> --pathTrgmSimilarity <value> --languageTrgmSimilarity <value> --hashTrgmSimilarity <value> --searchScore <value> [--repositoryId <value>] [--language <value>] [--hash <value>]
agent-db file update --id <value> [--entityId <value>] [--repositoryId <value>] [--path <value>] [--language <value>] [--hash <value>] [--pathTrgmSimilarity <value>] [--languageTrgmSimilarity <value>] [--hashTrgmSimilarity <value>] [--searchScore <value>]
agent-db file delete --id <value>
```

## Examples

### List all file records

```bash
agent-db file list
```

### Create a file

```bash
agent-db file create --entityId <value> --path <value> --pathTrgmSimilarity <value> --languageTrgmSimilarity <value> --hashTrgmSimilarity <value> --searchScore <value> [--repositoryId <value>] [--language <value>] [--hash <value>]
```

### Get a file by id

```bash
agent-db file get --id <value>
```
