# orgLimit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgLimit records via agentic-db CLI

## Usage

```bash
agentic-db org-limit list
agentic-db org-limit get --id <UUID>
agentic-db org-limit create --actorId <UUID> --entityId <UUID> [--name <String>] [--num <Int>] [--max <Int>]
agentic-db org-limit update --id <UUID> [--name <String>] [--actorId <UUID>] [--num <Int>] [--max <Int>] [--entityId <UUID>]
agentic-db org-limit delete --id <UUID>
```

## Examples

### List all orgLimit records

```bash
agentic-db org-limit list
```

### Create a orgLimit

```bash
agentic-db org-limit create --actorId <UUID> --entityId <UUID> [--name <String>] [--num <Int>] [--max <Int>]
```

### Get a orgLimit by id

```bash
agentic-db org-limit get --id <value>
```
