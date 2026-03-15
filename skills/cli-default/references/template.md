# template

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Template records via agent-db CLI

## Usage

```bash
agent-db template list
agent-db template get --id <value>
agent-db template create --entityId <value> --name <value> --content <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db template update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--content <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db template delete --id <value>
```

## Examples

### List all template records

```bash
agent-db template list
```

### Create a template

```bash
agent-db template create --entityId <value> --name <value> --content <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a template by id

```bash
agent-db template get --id <value>
```
