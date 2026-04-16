# skillTool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SkillTool records via agentic-db CLI

## Usage

```bash
agentic-db skill-tool list
agentic-db skill-tool list --where.<field>.<op> <value> --orderBy <values>
agentic-db skill-tool list --limit 10 --after <cursor>
agentic-db skill-tool find-first --where.<field>.<op> <value>
agentic-db skill-tool get --id <UUID>
agentic-db skill-tool create --skillId <UUID> --toolDefinitionId <UUID>
agentic-db skill-tool update --id <UUID> [--skillId <UUID>] [--toolDefinitionId <UUID>]
agentic-db skill-tool delete --id <UUID>
```

## Examples

### List skillTool records

```bash
agentic-db skill-tool list
```

### List skillTool records with pagination

```bash
agentic-db skill-tool list --limit 10 --offset 0
```

### List skillTool records with cursor pagination

```bash
agentic-db skill-tool list --limit 10 --after <cursor>
```

### Find first matching skillTool

```bash
agentic-db skill-tool find-first --where.id.equalTo <value>
```

### List skillTool records with field selection

```bash
agentic-db skill-tool list --select id,id
```

### List skillTool records with filtering and ordering

```bash
agentic-db skill-tool list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a skillTool

```bash
agentic-db skill-tool create --skillId <UUID> --toolDefinitionId <UUID>
```

### Get a skillTool by id

```bash
agentic-db skill-tool get --id <value>
```
