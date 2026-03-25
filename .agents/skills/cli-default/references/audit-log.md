# auditLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AuditLog records via agentic-db CLI

## Usage

```bash
agentic-db audit-log list
agentic-db audit-log get --id <UUID>
agentic-db audit-log create --event <String> --success <Boolean> [--actorId <UUID>] [--origin <Origin>] [--userAgent <String>] [--ipAddress <InternetAddress>]
agentic-db audit-log update --id <UUID> [--event <String>] [--actorId <UUID>] [--origin <Origin>] [--userAgent <String>] [--ipAddress <InternetAddress>] [--success <Boolean>]
agentic-db audit-log delete --id <UUID>
```

## Examples

### List all auditLog records

```bash
agentic-db audit-log list
```

### Create a auditLog

```bash
agentic-db audit-log create --event <String> --success <Boolean> [--actorId <UUID>] [--origin <Origin>] [--userAgent <String>] [--ipAddress <InternetAddress>]
```

### Get a auditLog by id

```bash
agentic-db audit-log get --id <value>
```
