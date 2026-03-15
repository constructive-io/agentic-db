# rule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Rule records via agent-db CLI

## Usage

```bash
agent-db rule list
agent-db rule get --id <value>
agent-db rule create --entityId <value> --title <value> --titleTrgmSimilarity <value> --contentTrgmSimilarity <value> --kindTrgmSimilarity <value> --severityTrgmSimilarity <value> --slugTrgmSimilarity <value> --verificationTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --triggerConceptVectorDistance <value> --searchScore <value> [--content <value>] [--kind <value>] [--severity <value>] [--isActive <value>] [--slug <value>] [--verification <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--triggerConcept <value>]
agent-db rule update --id <value> [--entityId <value>] [--title <value>] [--content <value>] [--kind <value>] [--severity <value>] [--isActive <value>] [--slug <value>] [--verification <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--triggerConcept <value>] [--titleTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--kindTrgmSimilarity <value>] [--severityTrgmSimilarity <value>] [--slugTrgmSimilarity <value>] [--verificationTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--triggerConceptVectorDistance <value>] [--searchScore <value>]
agent-db rule delete --id <value>
```

## Examples

### List all rule records

```bash
agent-db rule list
```

### Create a rule

```bash
agent-db rule create --entityId <value> --title <value> --titleTrgmSimilarity <value> --contentTrgmSimilarity <value> --kindTrgmSimilarity <value> --severityTrgmSimilarity <value> --slugTrgmSimilarity <value> --verificationTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --triggerConceptVectorDistance <value> --searchScore <value> [--content <value>] [--kind <value>] [--severity <value>] [--isActive <value>] [--slug <value>] [--verification <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--triggerConcept <value>]
```

### Get a rule by id

```bash
agent-db rule get --id <value>
```
