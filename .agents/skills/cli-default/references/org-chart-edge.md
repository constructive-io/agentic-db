# orgChartEdge

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgChartEdge records via agentic-db CLI

## Usage

```bash
agentic-db org-chart-edge list
agentic-db org-chart-edge get --id <UUID>
agentic-db org-chart-edge create --entityId <UUID> --childId <UUID> [--parentId <UUID>] [--positionTitle <String>] [--positionLevel <Int>]
agentic-db org-chart-edge update --id <UUID> [--entityId <UUID>] [--childId <UUID>] [--parentId <UUID>] [--positionTitle <String>] [--positionLevel <Int>]
agentic-db org-chart-edge delete --id <UUID>
```

## Examples

### List all orgChartEdge records

```bash
agentic-db org-chart-edge list
```

### Create a orgChartEdge

```bash
agentic-db org-chart-edge create --entityId <UUID> --childId <UUID> [--parentId <UUID>] [--positionTitle <String>] [--positionLevel <Int>]
```

### Get a orgChartEdge by id

```bash
agentic-db org-chart-edge get --id <value>
```
