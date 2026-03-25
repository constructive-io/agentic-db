# nodeTypeRegistry

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for NodeTypeRegistry records via agentic-db CLI

## Usage

```bash
agentic-db node-type-registry list
agentic-db node-type-registry get --name <String>
agentic-db node-type-registry create --slug <String> --category <String> [--displayName <String>] [--description <String>] [--parameterSchema <JSON>] [--tags <String>]
agentic-db node-type-registry update --name <String> [--slug <String>] [--category <String>] [--displayName <String>] [--description <String>] [--parameterSchema <JSON>] [--tags <String>]
agentic-db node-type-registry delete --name <String>
```

## Examples

### List all nodeTypeRegistry records

```bash
agentic-db node-type-registry list
```

### Create a nodeTypeRegistry

```bash
agentic-db node-type-registry create --slug <String> --category <String> [--displayName <String>] [--description <String>] [--parameterSchema <JSON>] [--tags <String>]
```

### Get a nodeTypeRegistry by name

```bash
agentic-db node-type-registry get --name <value>
```
