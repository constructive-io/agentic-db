# contextRelation

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContextRelation records via agent-db CLI

## Usage

```bash
agent-db context-relation list
agent-db context-relation get --id <value>
agent-db context-relation create --entityId <value> --fromType <value> --fromId <value> --toType <value> --toId <value> --fromTypeTrgmSimilarity <value> --toTypeTrgmSimilarity <value> --relationKindTrgmSimilarity <value> --reasonTrgmSimilarity <value> --searchScore <value> [--relationKind <value>] [--reason <value>] [--strength <value>]
agent-db context-relation update --id <value> [--entityId <value>] [--fromType <value>] [--fromId <value>] [--toType <value>] [--toId <value>] [--relationKind <value>] [--reason <value>] [--strength <value>] [--fromTypeTrgmSimilarity <value>] [--toTypeTrgmSimilarity <value>] [--relationKindTrgmSimilarity <value>] [--reasonTrgmSimilarity <value>] [--searchScore <value>]
agent-db context-relation delete --id <value>
```

## Examples

### List all contextRelation records

```bash
agent-db context-relation list
```

### Create a contextRelation

```bash
agent-db context-relation create --entityId <value> --fromType <value> --fromId <value> --toType <value> --toId <value> --fromTypeTrgmSimilarity <value> --toTypeTrgmSimilarity <value> --relationKindTrgmSimilarity <value> --reasonTrgmSimilarity <value> --searchScore <value> [--relationKind <value>] [--reason <value>] [--strength <value>]
```

### Get a contextRelation by id

```bash
agent-db context-relation get --id <value>
```
