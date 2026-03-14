# tool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Tool records via agent-os CLI

## Usage

```bash
agent-os tool list
agent-os tool get --id <value>
agent-os tool create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os tool update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os tool delete --id <value>
```

## Examples

### List all tool records

```bash
agent-os tool list
```

### Create a tool

```bash
agent-os tool create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a tool by id

```bash
agent-os tool get --id <value>
```
