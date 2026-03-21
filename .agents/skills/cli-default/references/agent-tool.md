# agentTool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentTool records via agentic-db CLI

## Usage

```bash
agentic-db agent-tool list
agentic-db agent-tool get --id <UUID>
agentic-db agent-tool create --agentId <UUID> --toolId <UUID> --entityId <UUID>
agentic-db agent-tool update --id <UUID> [--agentId <UUID>] [--toolId <UUID>] [--entityId <UUID>]
agentic-db agent-tool delete --id <UUID>
```

## Examples

### List all agentTool records

```bash
agentic-db agent-tool list
```

### Create a agentTool

```bash
agentic-db agent-tool create --agentId <UUID> --toolId <UUID> --entityId <UUID>
```

### Get a agentTool by id

```bash
agentic-db agent-tool get --id <value>
```
