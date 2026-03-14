# skillExecution

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SkillExecution records via agent-db CLI

## Usage

```bash
agent-db skill-execution list
agent-db skill-execution get --id <value>
agent-db skill-execution create --entityId <value> --skillId <value> [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
agent-db skill-execution update --id <value> [--entityId <value>] [--skillId <value>] [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
agent-db skill-execution delete --id <value>
```

## Examples

### List all skillExecution records

```bash
agent-db skill-execution list
```

### Create a skillExecution

```bash
agent-db skill-execution create --entityId <value> --skillId <value> [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
```

### Get a skillExecution by id

```bash
agent-db skill-execution get --id <value>
```
