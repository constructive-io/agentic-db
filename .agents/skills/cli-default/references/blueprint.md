# blueprint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Blueprint records via agentic-db CLI

## Usage

```bash
agentic-db blueprint list
agentic-db blueprint get --id <UUID>
agentic-db blueprint create --ownerId <UUID> --databaseId <UUID> --name <String> --displayName <String> --definition <JSON> [--description <String>] [--templateId <UUID>] [--status <String>] [--constructedAt <Datetime>] [--errorDetails <String>] [--refMap <JSON>] [--constructedDefinition <JSON>] [--definitionHash <UUID>] [--tableHashes <JSON>]
agentic-db blueprint update --id <UUID> [--ownerId <UUID>] [--databaseId <UUID>] [--name <String>] [--displayName <String>] [--description <String>] [--definition <JSON>] [--templateId <UUID>] [--status <String>] [--constructedAt <Datetime>] [--errorDetails <String>] [--refMap <JSON>] [--constructedDefinition <JSON>] [--definitionHash <UUID>] [--tableHashes <JSON>]
agentic-db blueprint delete --id <UUID>
```

## Examples

### List all blueprint records

```bash
agentic-db blueprint list
```

### Create a blueprint

```bash
agentic-db blueprint create --ownerId <UUID> --databaseId <UUID> --name <String> --displayName <String> --definition <JSON> [--description <String>] [--templateId <UUID>] [--status <String>] [--constructedAt <Datetime>] [--errorDetails <String>] [--refMap <JSON>] [--constructedDefinition <JSON>] [--definitionHash <UUID>] [--tableHashes <JSON>]
```

### Get a blueprint by id

```bash
agentic-db blueprint get --id <value>
```
