# agentic-db-tag

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Tag records via agentic-db CLI

## Usage

```bash
agentic-db tag list
agentic-db tag get --id <value>
agentic-db tag create --name <value>
agentic-db tag update --id <value> [--name <value>]
agentic-db tag delete --id <value>
```

## Examples

### List all tag records

```bash
agentic-db tag list
```

### Create a tag

```bash
agentic-db tag create --name "value"
```

### Get a tag by id

```bash
agentic-db tag get --id <value>
```

### Update a tag

```bash
agentic-db tag update --id <value> --name "new-value"
```

### Delete a tag

```bash
agentic-db tag delete --id <value>
```
