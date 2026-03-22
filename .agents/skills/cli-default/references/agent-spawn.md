# agentSpawn

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentSpawn records via agentic-db CLI

## Usage

```bash
agentic-db agent-spawn list
agentic-db agent-spawn get --id <UUID>
agentic-db agent-spawn create --entityId <UUID> --parentAgentId <UUID> --task <String> --agentId <UUID> [--childAgentId <UUID>] [--sessionId <UUID>] [--status <String>] [--result <JSON>] [--maxIterations <Int>] [--startedAt <Datetime>] [--completedAt <Datetime>]
agentic-db agent-spawn update --id <UUID> [--entityId <UUID>] [--parentAgentId <UUID>] [--childAgentId <UUID>] [--sessionId <UUID>] [--task <String>] [--status <String>] [--result <JSON>] [--maxIterations <Int>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--agentId <UUID>]
agentic-db agent-spawn delete --id <UUID>
```

## Examples

### List all agentSpawn records

```bash
agentic-db agent-spawn list
```

### Create a agentSpawn

```bash
agentic-db agent-spawn create --entityId <UUID> --parentAgentId <UUID> --task <String> --agentId <UUID> [--childAgentId <UUID>] [--sessionId <UUID>] [--status <String>] [--result <JSON>] [--maxIterations <Int>] [--startedAt <Datetime>] [--completedAt <Datetime>]
```

### Get a agentSpawn by id

```bash
agentic-db agent-spawn get --id <value>
```
