# agent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Agent records via agentic-db CLI

## Usage

```bash
agentic-db agent list
agentic-db agent get --id <value>
agentic-db agent create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --roleTrgmSimilarity <value> --statusTrgmSimilarity <value> --personaTrgmSimilarity <value> --backstoryTrgmSimilarity <value> --communicationStyleTrgmSimilarity <value> --systemPromptTrgmSimilarity <value> --preferredModelTrgmSimilarity <value> --moodTrgmSimilarity <value> --focusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db agent update --id <value> [--entityId <value>] [--name <value>] [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--roleTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--personaTrgmSimilarity <value>] [--backstoryTrgmSimilarity <value>] [--communicationStyleTrgmSimilarity <value>] [--systemPromptTrgmSimilarity <value>] [--preferredModelTrgmSimilarity <value>] [--moodTrgmSimilarity <value>] [--focusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db agent delete --id <value>
```

## Examples

### List all agent records

```bash
agentic-db agent list
```

### Create a agent

```bash
agentic-db agent create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --roleTrgmSimilarity <value> --statusTrgmSimilarity <value> --personaTrgmSimilarity <value> --backstoryTrgmSimilarity <value> --communicationStyleTrgmSimilarity <value> --systemPromptTrgmSimilarity <value> --preferredModelTrgmSimilarity <value> --moodTrgmSimilarity <value> --focusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a agent by id

```bash
agentic-db agent get --id <value>
```
