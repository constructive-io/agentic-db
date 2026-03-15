# agentSkill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentSkill records via agent-db CLI

## Usage

```bash
agent-db agent-skill list
agent-db agent-skill get --id <value>
agent-db agent-skill create --agentId <value> --skillId <value> --entityId <value>
agent-db agent-skill update --id <value> [--agentId <value>] [--skillId <value>] [--entityId <value>]
agent-db agent-skill delete --id <value>
```

## Examples

### List all agentSkill records

```bash
agent-db agent-skill list
```

### Create a agentSkill

```bash
agent-db agent-skill create --agentId <value> --skillId <value> --entityId <value>
```

### Get a agentSkill by id

```bash
agent-db agent-skill get --id <value>
```
