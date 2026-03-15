# agentTool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentTool records via agent-db CLI

## Usage

```bash
agent-db agent-tool list
agent-db agent-tool get --id <value>
agent-db agent-tool create --agentId <value> --toolId <value> --entityId <value>
agent-db agent-tool update --id <value> [--agentId <value>] [--toolId <value>] [--entityId <value>]
agent-db agent-tool delete --id <value>
```

## Examples

### List all agentTool records

```bash
agent-db agent-tool list
```

### Create a agentTool

```bash
agent-db agent-tool create --agentId <value> --toolId <value> --entityId <value>
```

### Get a agentTool by id

```bash
agent-db agent-tool get --id <value>
```
