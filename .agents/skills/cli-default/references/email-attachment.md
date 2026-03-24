# emailAttachment

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailAttachment records via agentic-db CLI

## Usage

```bash
agentic-db email-attachment list
agentic-db email-attachment get --id <UUID>
agentic-db email-attachment create --entityId <UUID> --emailId <UUID> --filename <String> [--contentType <String>] [--sizeBytes <Int>] [--storageUrl <String>] [--meta <JSON>]
agentic-db email-attachment update --id <UUID> [--entityId <UUID>] [--emailId <UUID>] [--filename <String>] [--contentType <String>] [--sizeBytes <Int>] [--storageUrl <String>] [--meta <JSON>]
agentic-db email-attachment delete --id <UUID>
```

## Examples

### List all emailAttachment records

```bash
agentic-db email-attachment list
```

### Create a emailAttachment

```bash
agentic-db email-attachment create --entityId <UUID> --emailId <UUID> --filename <String> [--contentType <String>] [--sizeBytes <Int>] [--storageUrl <String>] [--meta <JSON>]
```

### Get a emailAttachment by id

```bash
agentic-db email-attachment get --id <value>
```
