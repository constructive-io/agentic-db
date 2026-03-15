# agentSpawn

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentSpawn records via agent-db CLI

## Usage

```bash
agent-db agent-spawn list
agent-db agent-spawn get --id <value>
agent-db agent-spawn create --entityId <value> --parentAgentId <value> --task <value> --agentId <value> --taskTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--childAgentId <value>] [--sessionId <value>] [--status <value>] [--result <value>] [--maxIterations <value>] [--startedAt <value>] [--completedAt <value>]
agent-db agent-spawn update --id <value> [--entityId <value>] [--parentAgentId <value>] [--childAgentId <value>] [--sessionId <value>] [--task <value>] [--status <value>] [--result <value>] [--maxIterations <value>] [--startedAt <value>] [--completedAt <value>] [--agentId <value>] [--taskTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--searchScore <value>]
agent-db agent-spawn delete --id <value>
```

## Examples

### List all agentSpawn records

```bash
agent-db agent-spawn list
```

### Create a agentSpawn

```bash
agent-db agent-spawn create --entityId <value> --parentAgentId <value> --task <value> --agentId <value> --taskTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--childAgentId <value>] [--sessionId <value>] [--status <value>] [--result <value>] [--maxIterations <value>] [--startedAt <value>] [--completedAt <value>]
```

### Get a agentSpawn by id

```bash
agent-db agent-spawn get --id <value>
```
