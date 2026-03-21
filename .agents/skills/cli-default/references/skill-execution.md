# skillExecution

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SkillExecution records via agentic-db CLI

## Usage

```bash
agentic-db skill-execution list
agentic-db skill-execution get --id <UUID>
agentic-db skill-execution create --entityId <UUID> --skillId <UUID> [--agentId <UUID>] [--sessionId <UUID>] [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--durationMs <Int>] [--input <JSON>] [--output <JSON>] [--error <String>]
agentic-db skill-execution update --id <UUID> [--entityId <UUID>] [--skillId <UUID>] [--agentId <UUID>] [--sessionId <UUID>] [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--durationMs <Int>] [--input <JSON>] [--output <JSON>] [--error <String>]
agentic-db skill-execution delete --id <UUID>
```

## Examples

### List all skillExecution records

```bash
agentic-db skill-execution list
```

### Create a skillExecution

```bash
agentic-db skill-execution create --entityId <UUID> --skillId <UUID> [--agentId <UUID>] [--sessionId <UUID>] [--status <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--durationMs <Int>] [--input <JSON>] [--output <JSON>] [--error <String>]
```

### Get a skillExecution by id

```bash
agentic-db skill-execution get --id <value>
```
