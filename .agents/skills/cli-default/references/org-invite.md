# orgInvite

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgInvite records via agentic-db CLI

## Usage

```bash
agentic-db org-invite list
agentic-db org-invite get --id <UUID>
agentic-db org-invite create --entityId <UUID> [--email <Email>] [--senderId <UUID>] [--receiverId <UUID>] [--inviteToken <String>] [--inviteValid <Boolean>] [--inviteLimit <Int>] [--inviteCount <Int>] [--multiple <Boolean>] [--data <JSON>] [--expiresAt <Datetime>]
agentic-db org-invite update --id <UUID> [--email <Email>] [--senderId <UUID>] [--receiverId <UUID>] [--inviteToken <String>] [--inviteValid <Boolean>] [--inviteLimit <Int>] [--inviteCount <Int>] [--multiple <Boolean>] [--data <JSON>] [--expiresAt <Datetime>] [--entityId <UUID>]
agentic-db org-invite delete --id <UUID>
```

## Examples

### List all orgInvite records

```bash
agentic-db org-invite list
```

### Create a orgInvite

```bash
agentic-db org-invite create --entityId <UUID> [--email <Email>] [--senderId <UUID>] [--receiverId <UUID>] [--inviteToken <String>] [--inviteValid <Boolean>] [--inviteLimit <Int>] [--inviteCount <Int>] [--multiple <Boolean>] [--data <JSON>] [--expiresAt <Datetime>]
```

### Get a orgInvite by id

```bash
agentic-db org-invite get --id <value>
```
