# skillTool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SkillTool records via agentic-db CLI

## Usage

```bash
agentic-db skill-tool list
agentic-db skill-tool get --id <UUID>
agentic-db skill-tool create --skillId <UUID> --toolDefinitionId <UUID> --entityId <UUID>
agentic-db skill-tool update --id <UUID> [--skillId <UUID>] [--toolDefinitionId <UUID>] [--entityId <UUID>]
agentic-db skill-tool delete --id <UUID>
```

## Examples

### List all skillTool records

```bash
agentic-db skill-tool list
```

### Create a skillTool

```bash
agentic-db skill-tool create --skillId <UUID> --toolDefinitionId <UUID> --entityId <UUID>
```

### Get a skillTool by id

```bash
agentic-db skill-tool get --id <value>
```
