# sessionArchive

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SessionArchive records via agentic-db CLI

## Usage

```bash
agentic-db session-archive list
agentic-db session-archive get --id <value>
agentic-db session-archive create --entityId <value> --sessionId <value> --archiveIndex <value> --summary <value> --embeddingTextBm25Score <value> --summaryTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--messageRangeStart <value>] [--messageRangeEnd <value>] [--rawMessages <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db session-archive update --id <value> [--entityId <value>] [--sessionId <value>] [--archiveIndex <value>] [--summary <value>] [--messageRangeStart <value>] [--messageRangeEnd <value>] [--rawMessages <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--summaryTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db session-archive delete --id <value>
```

## Examples

### List all sessionArchive records

```bash
agentic-db session-archive list
```

### Create a sessionArchive

```bash
agentic-db session-archive create --entityId <value> --sessionId <value> --archiveIndex <value> --summary <value> --embeddingTextBm25Score <value> --summaryTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--messageRangeStart <value>] [--messageRangeEnd <value>] [--rawMessages <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a sessionArchive by id

```bash
agentic-db session-archive get --id <value>
```
