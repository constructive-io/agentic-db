# claimedInvite

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ClaimedInvite records via agentic-db CLI

## Usage

```bash
agentic-db claimed-invite list
agentic-db claimed-invite get --id <UUID>
agentic-db claimed-invite create [--data <JSON>] [--senderId <UUID>] [--receiverId <UUID>]
agentic-db claimed-invite update --id <UUID> [--data <JSON>] [--senderId <UUID>] [--receiverId <UUID>]
agentic-db claimed-invite delete --id <UUID>
```

## Examples

### List all claimedInvite records

```bash
agentic-db claimed-invite list
```

### Create a claimedInvite

```bash
agentic-db claimed-invite create [--data <JSON>] [--senderId <UUID>] [--receiverId <UUID>]
```

### Get a claimedInvite by id

```bash
agentic-db claimed-invite get --id <value>
```
