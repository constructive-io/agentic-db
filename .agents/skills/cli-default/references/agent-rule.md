# agentRule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentRule records via agentic-db CLI

## Usage

```bash
agentic-db agent-rule list
agentic-db agent-rule get --id <UUID>
agentic-db agent-rule create --agentId <UUID> --ruleId <UUID> --entityId <UUID>
agentic-db agent-rule update --id <UUID> [--agentId <UUID>] [--ruleId <UUID>] [--entityId <UUID>]
agentic-db agent-rule delete --id <UUID>
```

## Examples

### List all agentRule records

```bash
agentic-db agent-rule list
```

### Create a agentRule

```bash
agentic-db agent-rule create --agentId <UUID> --ruleId <UUID> --entityId <UUID>
```

### Get a agentRule by id

```bash
agentic-db agent-rule get --id <value>
```
