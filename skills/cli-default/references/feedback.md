# feedback

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Feedback records via agentic-db CLI

## Usage

```bash
agentic-db feedback list
agentic-db feedback get --id <value>
agentic-db feedback create --entityId <value> --targetType <value> --targetId <value> --targetTypeTrgmSimilarity <value> --commentTrgmSimilarity <value> --sourceTrgmSimilarity <value> --searchScore <value> [--rating <value>] [--comment <value>] [--source <value>]
agentic-db feedback update --id <value> [--entityId <value>] [--targetType <value>] [--targetId <value>] [--rating <value>] [--comment <value>] [--source <value>] [--targetTypeTrgmSimilarity <value>] [--commentTrgmSimilarity <value>] [--sourceTrgmSimilarity <value>] [--searchScore <value>]
agentic-db feedback delete --id <value>
```

## Examples

### List all feedback records

```bash
agentic-db feedback list
```

### Create a feedback

```bash
agentic-db feedback create --entityId <value> --targetType <value> --targetId <value> --targetTypeTrgmSimilarity <value> --commentTrgmSimilarity <value> --sourceTrgmSimilarity <value> --searchScore <value> [--rating <value>] [--comment <value>] [--source <value>]
```

### Get a feedback by id

```bash
agentic-db feedback get --id <value>
```
