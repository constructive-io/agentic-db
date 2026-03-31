# rawContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawContact records via agentic-db CLI

## Usage

```bash
agentic-db raw-contact list
agentic-db raw-contact list --where.<field>.<op> <value> --orderBy <values>
agentic-db raw-contact list --limit 10 --after <cursor>
agentic-db raw-contact find-first --where.<field>.<op> <value>
agentic-db raw-contact get --id <UUID>
agentic-db raw-contact create --entityId <UUID> [--externalId <String>] [--source <String>] [--firstName <String>] [--lastName <String>] [--fullName <String>] [--headline <String>] [--bio <String>] [--location <String>] [--company <String>] [--jobTitle <String>] [--rawData <JSON>] [--confidence <BigFloat>] [--ingestedAt <Datetime>]
agentic-db raw-contact update --id <UUID> [--entityId <UUID>] [--externalId <String>] [--source <String>] [--firstName <String>] [--lastName <String>] [--fullName <String>] [--headline <String>] [--bio <String>] [--location <String>] [--company <String>] [--jobTitle <String>] [--rawData <JSON>] [--confidence <BigFloat>] [--ingestedAt <Datetime>]
agentic-db raw-contact delete --id <UUID>
```

## Examples

### List rawContact records

```bash
agentic-db raw-contact list
```

### List rawContact records with pagination

```bash
agentic-db raw-contact list --limit 10 --offset 0
```

### List rawContact records with cursor pagination

```bash
agentic-db raw-contact list --limit 10 --after <cursor>
```

### Find first matching rawContact

```bash
agentic-db raw-contact find-first --where.id.equalTo <value>
```

### List rawContact records with field selection

```bash
agentic-db raw-contact list --select id,id
```

### List rawContact records with filtering and ordering

```bash
agentic-db raw-contact list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a rawContact

```bash
agentic-db raw-contact create --entityId <UUID> [--externalId <String>] [--source <String>] [--firstName <String>] [--lastName <String>] [--fullName <String>] [--headline <String>] [--bio <String>] [--location <String>] [--company <String>] [--jobTitle <String>] [--rawData <JSON>] [--confidence <BigFloat>] [--ingestedAt <Datetime>]
```

### Get a rawContact by id

```bash
agentic-db raw-contact get --id <value>
```
