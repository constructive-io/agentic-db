# invite

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Invite records via agentic-db CLI

## Usage

```bash
agentic-db invite list
agentic-db invite get --id <UUID>
agentic-db invite create [--email <Email>] [--senderId <UUID>] [--inviteToken <String>] [--inviteValid <Boolean>] [--inviteLimit <Int>] [--inviteCount <Int>] [--multiple <Boolean>] [--data <JSON>] [--expiresAt <Datetime>]
agentic-db invite update --id <UUID> [--email <Email>] [--senderId <UUID>] [--inviteToken <String>] [--inviteValid <Boolean>] [--inviteLimit <Int>] [--inviteCount <Int>] [--multiple <Boolean>] [--data <JSON>] [--expiresAt <Datetime>]
agentic-db invite delete --id <UUID>
```

## Examples

### List all invite records

```bash
agentic-db invite list
```

### Create a invite

```bash
agentic-db invite create [--email <Email>] [--senderId <UUID>] [--inviteToken <String>] [--inviteValid <Boolean>] [--inviteLimit <Int>] [--inviteCount <Int>] [--multiple <Boolean>] [--data <JSON>] [--expiresAt <Datetime>]
```

### Get a invite by id

```bash
agentic-db invite get --id <value>
```
