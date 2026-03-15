# task

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Task records via agent-db CLI

## Usage

```bash
agent-db task list
agent-db task get --id <value>
agent-db task create --entityId <value> --title <value> --titleTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --statusTrgmSimilarity <value> --taskTypeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--status <value>] [--priority <value>] [--projectId <value>] [--taskType <value>] [--assignedAgentId <value>] [--parentTaskId <value>] [--dueDate <value>] [--completedAt <value>] [--conversationId <value>] [--dependencies <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db task update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--status <value>] [--priority <value>] [--projectId <value>] [--taskType <value>] [--assignedAgentId <value>] [--parentTaskId <value>] [--dueDate <value>] [--completedAt <value>] [--conversationId <value>] [--dependencies <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--titleTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--taskTypeTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db task delete --id <value>
```

## Examples

### List all task records

```bash
agent-db task list
```

### Create a task

```bash
agent-db task create --entityId <value> --title <value> --titleTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --statusTrgmSimilarity <value> --taskTypeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--status <value>] [--priority <value>] [--projectId <value>] [--taskType <value>] [--assignedAgentId <value>] [--parentTaskId <value>] [--dueDate <value>] [--completedAt <value>] [--conversationId <value>] [--dependencies <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a task by id

```bash
agent-db task get --id <value>
```
