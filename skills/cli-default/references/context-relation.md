# contextRelation

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContextRelation records via agentic-db CLI

## Usage

```bash
agentic-db context-relation list
agentic-db context-relation get --id <value>
agentic-db context-relation create --entityId <value> --fromType <value> --fromId <value> --toType <value> --toId <value> --fromTypeTrgmSimilarity <value> --toTypeTrgmSimilarity <value> --relationKindTrgmSimilarity <value> --reasonTrgmSimilarity <value> --searchScore <value> [--relationKind <value>] [--reason <value>] [--strength <value>]
agentic-db context-relation update --id <value> [--entityId <value>] [--fromType <value>] [--fromId <value>] [--toType <value>] [--toId <value>] [--relationKind <value>] [--reason <value>] [--strength <value>] [--fromTypeTrgmSimilarity <value>] [--toTypeTrgmSimilarity <value>] [--relationKindTrgmSimilarity <value>] [--reasonTrgmSimilarity <value>] [--searchScore <value>]
agentic-db context-relation delete --id <value>
```

## Examples

### List all contextRelation records

```bash
agentic-db context-relation list
```

### Create a contextRelation

```bash
agentic-db context-relation create --entityId <value> --fromType <value> --fromId <value> --toType <value> --toId <value> --fromTypeTrgmSimilarity <value> --toTypeTrgmSimilarity <value> --relationKindTrgmSimilarity <value> --reasonTrgmSimilarity <value> --searchScore <value> [--relationKind <value>] [--reason <value>] [--strength <value>]
```

### Get a contextRelation by id

```bash
agentic-db context-relation get --id <value>
```
