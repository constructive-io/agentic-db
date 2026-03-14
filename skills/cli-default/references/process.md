# process

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Process records via agent-os CLI

## Usage

```bash
agent-os process list
agent-os process get --id <value>
agent-os process create --entityId <value> [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
agent-os process update --id <value> [--entityId <value>] [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
agent-os process delete --id <value>
```

## Examples

### List all process records

```bash
agent-os process list
```

### Create a process

```bash
agent-os process create --entityId <value> [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
```

### Get a process by id

```bash
agent-os process get --id <value>
```
