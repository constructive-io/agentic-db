# process

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Process records via agentic-db CLI

## Usage

```bash
agentic-db process list
agentic-db process get --id <UUID>
agentic-db process create --entityId <UUID> [--pid <Int>] [--agentId <UUID>] [--command <String>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--status <String>] [--exitCode <Int>] [--logsPath <String>]
agentic-db process update --id <UUID> [--entityId <UUID>] [--pid <Int>] [--agentId <UUID>] [--command <String>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--status <String>] [--exitCode <Int>] [--logsPath <String>]
agentic-db process delete --id <UUID>
```

## Examples

### List all process records

```bash
agentic-db process list
```

### Create a process

```bash
agentic-db process create --entityId <UUID> [--pid <Int>] [--agentId <UUID>] [--command <String>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--status <String>] [--exitCode <Int>] [--logsPath <String>]
```

### Get a process by id

```bash
agentic-db process get --id <value>
```
