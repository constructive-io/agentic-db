# appLevel

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AppLevel records via agentic-db CLI

## Usage

```bash
agentic-db app-level list
agentic-db app-level get --id <UUID>
agentic-db app-level create --name <String> [--description <String>] [--image <Image>] [--ownerId <UUID>]
agentic-db app-level update --id <UUID> [--name <String>] [--description <String>] [--image <Image>] [--ownerId <UUID>]
agentic-db app-level delete --id <UUID>
```

## Examples

### List all appLevel records

```bash
agentic-db app-level list
```

### Create a appLevel

```bash
agentic-db app-level create --name <String> [--description <String>] [--image <Image>] [--ownerId <UUID>]
```

### Get a appLevel by id

```bash
agentic-db app-level get --id <value>
```
