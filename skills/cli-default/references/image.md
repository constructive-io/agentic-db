# image

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Image records via agent-os CLI

## Usage

```bash
agent-os image list
agent-os image get --id <value>
agent-os image create --entityId <value> --url <value> --embeddingDistance <value> [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>]
agent-os image update --id <value> [--entityId <value>] [--url <value>] [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os image delete --id <value>
```

## Examples

### List all image records

```bash
agent-os image list
```

### Create a image

```bash
agent-os image create --entityId <value> --url <value> --embeddingDistance <value> [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>]
```

### Get a image by id

```bash
agent-os image get --id <value>
```
