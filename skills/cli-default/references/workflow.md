# workflow

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Workflow records via agentic-db CLI

## Usage

```bash
agentic-db workflow list
agentic-db workflow get --id <value>
agentic-db workflow create --entityId <value> --name <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --triggerTypeTrgmSimilarity <value> --searchScore <value> [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
agentic-db workflow update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--triggerTypeTrgmSimilarity <value>] [--searchScore <value>]
agentic-db workflow delete --id <value>
```

## Examples

### List all workflow records

```bash
agentic-db workflow list
```

### Create a workflow

```bash
agentic-db workflow create --entityId <value> --name <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --triggerTypeTrgmSimilarity <value> --searchScore <value> [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
```

### Get a workflow by id

```bash
agentic-db workflow get --id <value>
```
