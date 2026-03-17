# skillExecution

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SkillExecution records via agentic-db CLI

## Usage

```bash
agentic-db skill-execution list
agentic-db skill-execution get --id <value>
agentic-db skill-execution create --entityId <value> --skillId <value> --statusTrgmSimilarity <value> --errorTrgmSimilarity <value> --searchScore <value> [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
agentic-db skill-execution update --id <value> [--entityId <value>] [--skillId <value>] [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>] [--statusTrgmSimilarity <value>] [--errorTrgmSimilarity <value>] [--searchScore <value>]
agentic-db skill-execution delete --id <value>
```

## Examples

### List all skillExecution records

```bash
agentic-db skill-execution list
```

### Create a skillExecution

```bash
agentic-db skill-execution create --entityId <value> --skillId <value> --statusTrgmSimilarity <value> --errorTrgmSimilarity <value> --searchScore <value> [--agentId <value>] [--sessionId <value>] [--status <value>] [--startedAt <value>] [--completedAt <value>] [--durationMs <value>] [--input <value>] [--output <value>] [--error <value>]
```

### Get a skillExecution by id

```bash
agentic-db skill-execution get --id <value>
```
