# image

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Image records via agent-db CLI

## Usage

```bash
agent-db image list
agent-db image get --id <value>
agent-db image create --entityId <value> --url <value> --urlTrgmSimilarity <value> --altTextTrgmSimilarity <value> --captionTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>]
agent-db image update --id <value> [--entityId <value>] [--url <value>] [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>] [--urlTrgmSimilarity <value>] [--altTextTrgmSimilarity <value>] [--captionTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db image delete --id <value>
```

## Examples

### List all image records

```bash
agent-db image list
```

### Create a image

```bash
agent-db image create --entityId <value> --url <value> --urlTrgmSimilarity <value> --altTextTrgmSimilarity <value> --captionTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--meta <value>] [--altText <value>] [--caption <value>] [--embedding <value>]
```

### Get a image by id

```bash
agent-db image get --id <value>
```
