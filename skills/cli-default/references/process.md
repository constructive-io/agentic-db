# process

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Process records via agent-db CLI

## Usage

```bash
agent-db process list
agent-db process get --id <value>
agent-db process create --entityId <value> [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
agent-db process update --id <value> [--entityId <value>] [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
agent-db process delete --id <value>
```

## Examples

### List all process records

```bash
agent-db process list
```

### Create a process

```bash
agent-db process create --entityId <value> [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
```

### Get a process by id

```bash
agent-db process get --id <value>
```
