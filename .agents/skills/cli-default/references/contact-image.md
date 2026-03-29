# contactImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactImage records via agentic-db CLI

## Usage

```bash
agentic-db contact-image list
agentic-db contact-image get --id <UUID>
agentic-db contact-image create --contactId <UUID> --imageId <UUID>
agentic-db contact-image update --id <UUID> [--contactId <UUID>] [--imageId <UUID>]
agentic-db contact-image delete --id <UUID>
```

## Examples

### List all contactImage records

```bash
agentic-db contact-image list
```

### Create a contactImage

```bash
agentic-db contact-image create --contactId <UUID> --imageId <UUID>
```

### Get a contactImage by id

```bash
agentic-db contact-image get --id <value>
```
