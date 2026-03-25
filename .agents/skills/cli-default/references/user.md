# user

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for User records via agentic-db CLI

**Unified Search API fields:** `displayNameTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db user list
agentic-db user get --id <UUID>
agentic-db user create [--username <String>] [--displayName <String>] [--profilePicture <Image>] [--type <Int>]
agentic-db user update --id <UUID> [--username <String>] [--displayName <String>] [--profilePicture <Image>] [--type <Int>]
agentic-db user delete --id <UUID>
```

## Examples

### List all user records

```bash
agentic-db user list
```

### Create a user

```bash
agentic-db user create [--username <String>] [--displayName <String>] [--profilePicture <Image>] [--type <Int>]
```

### Get a user by id

```bash
agentic-db user get --id <value>
```
