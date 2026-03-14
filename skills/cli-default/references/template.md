# template

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Template records via agent-os CLI

## Usage

```bash
agent-os template list
agent-os template get --id <value>
agent-os template create --entityId <value> --name <value> --content <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os template update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--content <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os template delete --id <value>
```

## Examples

### List all template records

```bash
agent-os template list
```

### Create a template

```bash
agent-os template create --entityId <value> --name <value> --content <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a template by id

```bash
agent-os template get --id <value>
```
