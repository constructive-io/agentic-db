# scheduledJob

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ScheduledJob records via agent-db CLI

## Usage

```bash
agent-db scheduled-job list
agent-db scheduled-job get --id <value>
agent-db scheduled-job create --entityId <value> --name <value> --schedule <value> --command <value> [--agentId <value>] [--active <value>] [--lastRun <value>] [--nextRun <value>]
agent-db scheduled-job update --id <value> [--entityId <value>] [--name <value>] [--schedule <value>] [--command <value>] [--agentId <value>] [--active <value>] [--lastRun <value>] [--nextRun <value>]
agent-db scheduled-job delete --id <value>
```

## Examples

### List all scheduledJob records

```bash
agent-db scheduled-job list
```

### Create a scheduledJob

```bash
agent-db scheduled-job create --entityId <value> --name <value> --schedule <value> --command <value> [--agentId <value>] [--active <value>] [--lastRun <value>] [--nextRun <value>]
```

### Get a scheduledJob by id

```bash
agent-db scheduled-job get --id <value>
```
