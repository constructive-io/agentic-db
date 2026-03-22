# toolDefinition

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ToolDefinition records via agentic-db CLI

## Usage

```bash
agentic-db tool-definition list
agentic-db tool-definition get --id <UUID>
agentic-db tool-definition create --entityId <UUID> --name <String> [--description <String>] [--inputSchema <JSON>] [--outputSchema <JSON>] [--implementation <String>] [--isActive <Boolean>]
agentic-db tool-definition update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--inputSchema <JSON>] [--outputSchema <JSON>] [--implementation <String>] [--isActive <Boolean>]
agentic-db tool-definition delete --id <UUID>
```

## Examples

### List all toolDefinition records

```bash
agentic-db tool-definition list
```

### Create a toolDefinition

```bash
agentic-db tool-definition create --entityId <UUID> --name <String> [--description <String>] [--inputSchema <JSON>] [--outputSchema <JSON>] [--implementation <String>] [--isActive <Boolean>]
```

### Get a toolDefinition by id

```bash
agentic-db tool-definition get --id <value>
```
