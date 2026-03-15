# sessionArchive

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SessionArchive records via agent-db CLI

## Usage

```bash
agent-db session-archive list
agent-db session-archive get --id <value>
agent-db session-archive create --entityId <value> --sessionId <value> --archiveIndex <value> --summary <value> --summaryTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--messageRangeStart <value>] [--messageRangeEnd <value>] [--rawMessages <value>] [--embeddingText <value>] [--embedding <value>]
agent-db session-archive update --id <value> [--entityId <value>] [--sessionId <value>] [--archiveIndex <value>] [--summary <value>] [--messageRangeStart <value>] [--messageRangeEnd <value>] [--rawMessages <value>] [--embeddingText <value>] [--embedding <value>] [--summaryTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db session-archive delete --id <value>
```

## Examples

### List all sessionArchive records

```bash
agent-db session-archive list
```

### Create a sessionArchive

```bash
agent-db session-archive create --entityId <value> --sessionId <value> --archiveIndex <value> --summary <value> --summaryTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--messageRangeStart <value>] [--messageRangeEnd <value>] [--rawMessages <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a sessionArchive by id

```bash
agent-db session-archive get --id <value>
```
