# scheduledJob

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ScheduledJob records via agent-os CLI

## Usage

```bash
agent-os scheduled-job list
agent-os scheduled-job get --id <value>
agent-os scheduled-job create --entityId <value> --name <value> --schedule <value> --command <value> [--agentId <value>] [--active <value>] [--lastRun <value>] [--nextRun <value>]
agent-os scheduled-job update --id <value> [--entityId <value>] [--name <value>] [--schedule <value>] [--command <value>] [--agentId <value>] [--active <value>] [--lastRun <value>] [--nextRun <value>]
agent-os scheduled-job delete --id <value>
```

## Examples

### List all scheduledJob records

```bash
agent-os scheduled-job list
```

### Create a scheduledJob

```bash
agent-os scheduled-job create --entityId <value> --name <value> --schedule <value> --command <value> [--agentId <value>] [--active <value>] [--lastRun <value>] [--nextRun <value>]
```

### Get a scheduledJob by id

```bash
agent-os scheduled-job get --id <value>
```
