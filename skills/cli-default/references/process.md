# process

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Process records via agentic-db CLI

## Usage

```bash
agentic-db process list
agentic-db process get --id <value>
agentic-db process create --entityId <value> --commandTrgmSimilarity <value> --statusTrgmSimilarity <value> --logsPathTrgmSimilarity <value> --searchScore <value> [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
agentic-db process update --id <value> [--entityId <value>] [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>] [--commandTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--logsPathTrgmSimilarity <value>] [--searchScore <value>]
agentic-db process delete --id <value>
```

## Examples

### List all process records

```bash
agentic-db process list
```

### Create a process

```bash
agentic-db process create --entityId <value> --commandTrgmSimilarity <value> --statusTrgmSimilarity <value> --logsPathTrgmSimilarity <value> --searchScore <value> [--pid <value>] [--agentId <value>] [--command <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--exitCode <value>] [--logsPath <value>]
```

### Get a process by id

```bash
agentic-db process get --id <value>
```
