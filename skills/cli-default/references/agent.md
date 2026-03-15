# agent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Agent records via agent-db CLI

## Usage

```bash
agent-db agent list
agent-db agent get --id <value>
agent-db agent create --entityId <value> --name <value> --nameTrgmSimilarity <value> --roleTrgmSimilarity <value> --statusTrgmSimilarity <value> --personaTrgmSimilarity <value> --backstoryTrgmSimilarity <value> --communicationStyleTrgmSimilarity <value> --systemPromptTrgmSimilarity <value> --preferredModelTrgmSimilarity <value> --moodTrgmSimilarity <value> --focusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>]
agent-db agent update --id <value> [--entityId <value>] [--name <value>] [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>] [--nameTrgmSimilarity <value>] [--roleTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--personaTrgmSimilarity <value>] [--backstoryTrgmSimilarity <value>] [--communicationStyleTrgmSimilarity <value>] [--systemPromptTrgmSimilarity <value>] [--preferredModelTrgmSimilarity <value>] [--moodTrgmSimilarity <value>] [--focusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db agent delete --id <value>
```

## Examples

### List all agent records

```bash
agent-db agent list
```

### Create a agent

```bash
agent-db agent create --entityId <value> --name <value> --nameTrgmSimilarity <value> --roleTrgmSimilarity <value> --statusTrgmSimilarity <value> --personaTrgmSimilarity <value> --backstoryTrgmSimilarity <value> --communicationStyleTrgmSimilarity <value> --systemPromptTrgmSimilarity <value> --preferredModelTrgmSimilarity <value> --moodTrgmSimilarity <value> --focusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--role <value>] [--capabilities <value>] [--config <value>] [--status <value>] [--persona <value>] [--backstory <value>] [--communicationStyle <value>] [--systemPrompt <value>] [--preferredModel <value>] [--fallbackModels <value>] [--temperature <value>] [--mood <value>] [--focus <value>] [--lastActiveAt <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a agent by id

```bash
agent-db agent get --id <value>
```
