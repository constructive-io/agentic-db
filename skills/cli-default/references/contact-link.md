# contactLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactLink records via agentic-db CLI

## Usage

```bash
agentic-db contact-link list
agentic-db contact-link get --id <value>
agentic-db contact-link create --entityId <value> --url <value> --contactId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
agentic-db contact-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--contactId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db contact-link delete --id <value>
```

## Examples

### List all contactLink records

```bash
agentic-db contact-link list
```

### Create a contactLink

```bash
agentic-db contact-link create --entityId <value> --url <value> --contactId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
```

### Get a contactLink by id

```bash
agentic-db contact-link get --id <value>
```
