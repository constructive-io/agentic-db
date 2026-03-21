# agentSkill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentSkill records via agentic-db CLI

## Usage

```bash
agentic-db agent-skill list
agentic-db agent-skill get --id <UUID>
agentic-db agent-skill create --agentId <UUID> --skillId <UUID> --entityId <UUID>
agentic-db agent-skill update --id <UUID> [--agentId <UUID>] [--skillId <UUID>] [--entityId <UUID>]
agentic-db agent-skill delete --id <UUID>
```

## Examples

### List all agentSkill records

```bash
agentic-db agent-skill list
```

### Create a agentSkill

```bash
agentic-db agent-skill create --agentId <UUID> --skillId <UUID> --entityId <UUID>
```

### Get a agentSkill by id

```bash
agentic-db agent-skill get --id <value>
```
