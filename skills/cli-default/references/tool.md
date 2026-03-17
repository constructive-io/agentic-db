# tool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Tool records via agentic-db CLI

## Usage

```bash
agentic-db tool list
agentic-db tool get --id <value>
agentic-db tool create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --typeTrgmSimilarity <value> --endpointTrgmSimilarity <value> --authMethodTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db tool update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--endpointTrgmSimilarity <value>] [--authMethodTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db tool delete --id <value>
```

## Examples

### List all tool records

```bash
agentic-db tool list
```

### Create a tool

```bash
agentic-db tool create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --typeTrgmSimilarity <value> --endpointTrgmSimilarity <value> --authMethodTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--type <value>] [--inputSchema <value>] [--outputSchema <value>] [--endpoint <value>] [--authMethod <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a tool by id

```bash
agentic-db tool get --id <value>
```
