# agent-os-tag

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Tag records via agent-os CLI

## Usage

```bash
agent-os tag list
agent-os tag get --id <value>
agent-os tag create --name <value>
agent-os tag update --id <value> [--name <value>]
agent-os tag delete --id <value>
```

## Examples

### List all tag records

```bash
agent-os tag list
```

### Create a tag

```bash
agent-os tag create --name "value"
```

### Get a tag by id

```bash
agent-os tag get --id <value>
```

### Update a tag

```bash
agent-os tag update --id <value> --name "new-value"
```

### Delete a tag

```bash
agent-os tag delete --id <value>
```
