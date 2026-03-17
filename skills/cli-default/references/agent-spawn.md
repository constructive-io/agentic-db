# agentSpawn

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentSpawn records via agentic-db CLI

## Usage

```bash
agentic-db agent-spawn list
agentic-db agent-spawn get --id <value>
agentic-db agent-spawn create --entityId <value> --parentAgentId <value> --task <value> --agentId <value> --taskTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--childAgentId <value>] [--sessionId <value>] [--status <value>] [--result <value>] [--maxIterations <value>] [--startedAt <value>] [--completedAt <value>]
agentic-db agent-spawn update --id <value> [--entityId <value>] [--parentAgentId <value>] [--childAgentId <value>] [--sessionId <value>] [--task <value>] [--status <value>] [--result <value>] [--maxIterations <value>] [--startedAt <value>] [--completedAt <value>] [--agentId <value>] [--taskTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--searchScore <value>]
agentic-db agent-spawn delete --id <value>
```

## Examples

### List all agentSpawn records

```bash
agentic-db agent-spawn list
```

### Create a agentSpawn

```bash
agentic-db agent-spawn create --entityId <value> --parentAgentId <value> --task <value> --agentId <value> --taskTrgmSimilarity <value> --statusTrgmSimilarity <value> --searchScore <value> [--childAgentId <value>] [--sessionId <value>] [--status <value>] [--result <value>] [--maxIterations <value>] [--startedAt <value>] [--completedAt <value>]
```

### Get a agentSpawn by id

```bash
agentic-db agent-spawn get --id <value>
```
