# rawContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawContact records via agentic-db CLI

## Usage

```bash
agentic-db raw-contact list
agentic-db raw-contact get --id <UUID>
agentic-db raw-contact create --entityId <UUID> [--externalId <String>] [--source <String>] [--firstName <String>] [--lastName <String>] [--email <String>] [--phone <String>] [--company <String>] [--title <String>] [--location <String>] [--linkedinUrl <String>] [--twitterHandle <String>] [--website <String>] [--confidence <BigFloat>] [--rawData <JSON>] [--ingestedAt <Datetime>]
agentic-db raw-contact update --id <UUID> [--entityId <UUID>] [--externalId <String>] [--source <String>] [--firstName <String>] [--lastName <String>] [--email <String>] [--phone <String>] [--company <String>] [--title <String>] [--location <String>] [--linkedinUrl <String>] [--twitterHandle <String>] [--website <String>] [--confidence <BigFloat>] [--rawData <JSON>] [--ingestedAt <Datetime>]
agentic-db raw-contact delete --id <UUID>
```

## Examples

### List all rawContact records

```bash
agentic-db raw-contact list
```

### Create a rawContact

```bash
agentic-db raw-contact create --entityId <UUID> [--externalId <String>] [--source <String>] [--firstName <String>] [--lastName <String>] [--email <String>] [--phone <String>] [--company <String>] [--title <String>] [--location <String>] [--linkedinUrl <String>] [--twitterHandle <String>] [--website <String>] [--confidence <BigFloat>] [--rawData <JSON>] [--ingestedAt <Datetime>]
```

### Get a rawContact by id

```bash
agentic-db raw-contact get --id <value>
```
