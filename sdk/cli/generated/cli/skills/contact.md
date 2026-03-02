# agent-os-contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Contact records via agent-os CLI

## Usage

```bash
agent-os contact list
agent-os contact get --id <value>
agent-os contact create --entityId <value> --firstName <value> --lastName <value> --email <value> --phone <value> --headline <value> --bio <value> --location <value>
agent-os contact update --id <value> [--entityId <value>] [--firstName <value>] [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>]
agent-os contact delete --id <value>
```

## Examples

### List all contact records

```bash
agent-os contact list
```

### Create a contact

```bash
agent-os contact create --entityId "value" --firstName "value" --lastName "value" --email "value" --phone "value" --headline "value" --bio "value" --location "value"
```

### Get a contact by id

```bash
agent-os contact get --id <value>
```

### Update a contact

```bash
agent-os contact update --id <value> --entityId "new-value"
```

### Delete a contact

```bash
agent-os contact delete --id <value>
```
