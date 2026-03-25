# orgClaimedInvite

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgClaimedInvite records via agentic-db CLI

## Usage

```bash
agentic-db org-claimed-invite list
agentic-db org-claimed-invite get --id <UUID>
agentic-db org-claimed-invite create --entityId <UUID> [--data <JSON>] [--senderId <UUID>] [--receiverId <UUID>]
agentic-db org-claimed-invite update --id <UUID> [--data <JSON>] [--senderId <UUID>] [--receiverId <UUID>] [--entityId <UUID>]
agentic-db org-claimed-invite delete --id <UUID>
```

## Examples

### List all orgClaimedInvite records

```bash
agentic-db org-claimed-invite list
```

### Create a orgClaimedInvite

```bash
agentic-db org-claimed-invite create --entityId <UUID> [--data <JSON>] [--senderId <UUID>] [--receiverId <UUID>]
```

### Get a orgClaimedInvite by id

```bash
agentic-db org-claimed-invite get --id <value>
```
