# agentPrompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentPrompt records via agentic-db CLI

## Usage

```bash
agentic-db agent-prompt list
agentic-db agent-prompt get --id <UUID>
agentic-db agent-prompt create --agentId <UUID> --promptId <UUID> --entityId <UUID>
agentic-db agent-prompt update --id <UUID> [--agentId <UUID>] [--promptId <UUID>] [--entityId <UUID>]
agentic-db agent-prompt delete --id <UUID>
```

## Examples

### List all agentPrompt records

```bash
agentic-db agent-prompt list
```

### Create a agentPrompt

```bash
agentic-db agent-prompt create --agentId <UUID> --promptId <UUID> --entityId <UUID>
```

### Get a agentPrompt by id

```bash
agentic-db agent-prompt get --id <value>
```
