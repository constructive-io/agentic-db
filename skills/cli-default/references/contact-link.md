# contactLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactLink records via agent-db CLI

## Usage

```bash
agent-db contact-link list
agent-db contact-link get --id <value>
agent-db contact-link create --entityId <value> --url <value> --contactId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
agent-db contact-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--contactId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db contact-link delete --id <value>
```

## Examples

### List all contactLink records

```bash
agent-db contact-link list
```

### Create a contactLink

```bash
agent-db contact-link create --entityId <value> --url <value> --contactId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
```

### Get a contactLink by id

```bash
agent-db contact-link get --id <value>
```
