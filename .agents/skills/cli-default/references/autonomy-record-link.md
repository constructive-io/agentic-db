# autonomyRecordLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AutonomyRecordLink records via agentic-db CLI

## Usage

```bash
agentic-db autonomy-record-link list
agentic-db autonomy-record-link get --id <UUID>
agentic-db autonomy-record-link create --sourceRecordId <UUID> --targetRecordId <UUID> --entityId <UUID>
agentic-db autonomy-record-link update --id <UUID> [--sourceRecordId <UUID>] [--targetRecordId <UUID>] [--entityId <UUID>]
agentic-db autonomy-record-link delete --id <UUID>
```

## Examples

### List all autonomyRecordLink records

```bash
agentic-db autonomy-record-link list
```

### Create a autonomyRecordLink

```bash
agentic-db autonomy-record-link create --sourceRecordId <UUID> --targetRecordId <UUID> --entityId <UUID>
```

### Get a autonomyRecordLink by id

```bash
agentic-db autonomy-record-link get --id <value>
```
