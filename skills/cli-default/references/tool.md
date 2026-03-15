# tool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Tool records via agent-db CLI

## Usage

```bash
agent-db tool list
agent-db tool get --id <value>
agent-db tool create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db tool update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db tool delete --id <value>
```

## Examples

### List all tool records

```bash
agent-db tool list
```

### Create a tool

```bash
agent-db tool create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a tool by id

```bash
agent-db tool get --id <value>
```
