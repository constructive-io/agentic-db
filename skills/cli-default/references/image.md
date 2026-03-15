# image

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Image records via agentic-db CLI

## Usage

```bash
agentic-db image list
agentic-db image get --id <value>
agentic-db image create --entityId <value> --url <value> --meta <value> --altText <value> --caption <value> --embedding <value> --embeddingDistance <value>
agentic-db image update --id <value> [--entityId <value>] [--url <value>] [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db image delete --id <value>
```

## Examples

### List all image records

```bash
agentic-db image list
```

### Create a image

```bash
agentic-db image create --entityId "value" --url "value" --meta "value" --altText "value" --caption "value" --embedding "value" --embeddingDistance "value"
```

### Get a image by id

```bash
agentic-db image get --id <value>
```
