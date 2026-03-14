# task

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Task records via agent-os CLI

## Usage

```bash
agent-os task list
agent-os task get --id <value>
agent-os task create --entityId <value> --title <value> --embeddingDistance <value> [--description <value>] [--status <value>] [--priority <value>] [--projectId <value>] [--taskType <value>] [--assignedAgentId <value>] [--parentTaskId <value>] [--dueDate <value>] [--completedAt <value>] [--conversationId <value>] [--dependencies <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os task update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--status <value>] [--priority <value>] [--projectId <value>] [--taskType <value>] [--assignedAgentId <value>] [--parentTaskId <value>] [--dueDate <value>] [--completedAt <value>] [--conversationId <value>] [--dependencies <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os task delete --id <value>
```

## Examples

### List all task records

```bash
agent-os task list
```

### Create a task

```bash
agent-os task create --entityId <value> --title <value> --embeddingDistance <value> [--description <value>] [--status <value>] [--priority <value>] [--projectId <value>] [--taskType <value>] [--assignedAgentId <value>] [--parentTaskId <value>] [--dueDate <value>] [--completedAt <value>] [--conversationId <value>] [--dependencies <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a task by id

```bash
agent-os task get --id <value>
```
