# orgChartEdgeGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for OrgChartEdgeGrant records via agentic-db CLI

## Usage

```bash
agentic-db org-chart-edge-grant list
agentic-db org-chart-edge-grant get --id <UUID>
agentic-db org-chart-edge-grant create --entityId <UUID> --childId <UUID> [--parentId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>] [--positionTitle <String>] [--positionLevel <Int>]
agentic-db org-chart-edge-grant update --id <UUID> [--entityId <UUID>] [--childId <UUID>] [--parentId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>] [--positionTitle <String>] [--positionLevel <Int>]
agentic-db org-chart-edge-grant delete --id <UUID>
```

## Examples

### List all orgChartEdgeGrant records

```bash
agentic-db org-chart-edge-grant list
```

### Create a orgChartEdgeGrant

```bash
agentic-db org-chart-edge-grant create --entityId <UUID> --childId <UUID> [--parentId <UUID>] [--grantorId <UUID>] [--isGrant <Boolean>] [--positionTitle <String>] [--positionLevel <Int>]
```

### Get a orgChartEdgeGrant by id

```bash
agentic-db org-chart-edge-grant get --id <value>
```
