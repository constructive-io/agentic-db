# skillExecution

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SkillExecution records via agent-os CLI

## Usage

```bash
agent-os skill-execution list
agent-os skill-execution get --id <value>
agent-os skill-execution create --entityId <value> --skillId <value> [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
agent-os skill-execution update --id <value> [--entityId <value>] [--skillId <value>] [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
agent-os skill-execution delete --id <value>
```

## Examples

### List all skillExecution records

```bash
agent-os skill-execution list
```

### Create a skillExecution

```bash
agent-os skill-execution create --entityId <value> --skillId <value> [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
```

### Get a skillExecution by id

```bash
agent-os skill-execution get --id <value>
```
