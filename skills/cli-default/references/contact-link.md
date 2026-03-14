# contactLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactLink records via agent-os CLI

## Usage

```bash
agent-os contact-link list
agent-os contact-link get --id <value>
agent-os contact-link create --entityId <value> --url <value> --contactId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
agent-os contact-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--contactId <value>] [--embeddingDistance <value>]
agent-os contact-link delete --id <value>
```

## Examples

### List all contactLink records

```bash
agent-os contact-link list
```

### Create a contactLink

```bash
agent-os contact-link create --entityId <value> --url <value> --contactId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
```

### Get a contactLink by id

```bash
agent-os contact-link get --id <value>
```
