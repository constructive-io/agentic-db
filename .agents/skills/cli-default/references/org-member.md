# orgMember

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgMember records via agentic-db CLI

## Usage

```bash
agentic-db org-member list
agentic-db org-member get --id <UUID>
agentic-db org-member create --actorId <UUID> --entityId <UUID> [--isAdmin <Boolean>]
agentic-db org-member update --id <UUID> [--isAdmin <Boolean>] [--actorId <UUID>] [--entityId <UUID>]
agentic-db org-member delete --id <UUID>
```

## Examples

### List all orgMember records

```bash
agentic-db org-member list
```

### Create a orgMember

```bash
agentic-db org-member create --actorId <UUID> --entityId <UUID> [--isAdmin <Boolean>]
```

### Get a orgMember by id

```bash
agentic-db org-member get --id <value>
```
