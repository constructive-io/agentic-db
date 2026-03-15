# agentic-db-contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Contact records via agentic-db CLI

## Usage

```bash
agentic-db contact list
agentic-db contact get --id <value>
agentic-db contact create --entityId <value> --firstName <value> --lastName <value> --email <value> --phone <value> --headline <value> --bio <value> --location <value>
agentic-db contact update --id <value> [--entityId <value>] [--firstName <value>] [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>]
agentic-db contact delete --id <value>
```

## Examples

### List all contact records

```bash
agentic-db contact list
```

### Create a contact

```bash
agentic-db contact create --entityId "value" --firstName "value" --lastName "value" --email "value" --phone "value" --headline "value" --bio "value" --location "value"
```

### Get a contact by id

```bash
agentic-db contact get --id <value>
```

### Update a contact

```bash
agentic-db contact update --id <value> --entityId "new-value"
```

### Delete a contact

```bash
agentic-db contact delete --id <value>
```
