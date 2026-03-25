# blueprintTemplate

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for BlueprintTemplate records via agentic-db CLI

## Usage

```bash
agentic-db blueprint-template list
agentic-db blueprint-template get --id <UUID>
agentic-db blueprint-template create --name <String> --displayName <String> --ownerId <UUID> --definition <JSON> [--version <String>] [--description <String>] [--visibility <String>] [--categories <String>] [--tags <String>] [--definitionSchemaVersion <String>] [--source <String>] [--complexity <String>] [--copyCount <Int>] [--forkCount <Int>] [--forkedFromId <UUID>] [--definitionHash <UUID>] [--tableHashes <JSON>]
agentic-db blueprint-template update --id <UUID> [--name <String>] [--version <String>] [--displayName <String>] [--description <String>] [--ownerId <UUID>] [--visibility <String>] [--categories <String>] [--tags <String>] [--definition <JSON>] [--definitionSchemaVersion <String>] [--source <String>] [--complexity <String>] [--copyCount <Int>] [--forkCount <Int>] [--forkedFromId <UUID>] [--definitionHash <UUID>] [--tableHashes <JSON>]
agentic-db blueprint-template delete --id <UUID>
```

## Examples

### List all blueprintTemplate records

```bash
agentic-db blueprint-template list
```

### Create a blueprintTemplate

```bash
agentic-db blueprint-template create --name <String> --displayName <String> --ownerId <UUID> --definition <JSON> [--version <String>] [--description <String>] [--visibility <String>] [--categories <String>] [--tags <String>] [--definitionSchemaVersion <String>] [--source <String>] [--complexity <String>] [--copyCount <Int>] [--forkCount <Int>] [--forkedFromId <UUID>] [--definitionHash <UUID>] [--tableHashes <JSON>]
```

### Get a blueprintTemplate by id

```bash
agentic-db blueprint-template get --id <value>
```
