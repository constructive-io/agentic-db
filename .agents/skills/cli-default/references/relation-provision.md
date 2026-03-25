# relationProvision

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RelationProvision records via agentic-db CLI

## Usage

```bash
agentic-db relation-provision list
agentic-db relation-provision get --id <UUID>
agentic-db relation-provision create --databaseId <UUID> --relationType <String> --sourceTableId <UUID> --targetTableId <UUID> [--fieldName <String>] [--deleteAction <String>] [--isRequired <Boolean>] [--apiRequired <Boolean>] [--junctionTableId <UUID>] [--junctionTableName <String>] [--junctionSchemaId <UUID>] [--sourceFieldName <String>] [--targetFieldName <String>] [--useCompositeKey <Boolean>] [--createIndex <Boolean>] [--exposeInApi <Boolean>] [--nodeType <String>] [--nodeData <JSON>] [--grantRoles <String>] [--grantPrivileges <JSON>] [--policyType <String>] [--policyPrivileges <String>] [--policyRole <String>] [--policyPermissive <Boolean>] [--policyName <String>] [--policyData <JSON>] [--outFieldId <UUID>] [--outJunctionTableId <UUID>] [--outSourceFieldId <UUID>] [--outTargetFieldId <UUID>]
agentic-db relation-provision update --id <UUID> [--databaseId <UUID>] [--relationType <String>] [--sourceTableId <UUID>] [--targetTableId <UUID>] [--fieldName <String>] [--deleteAction <String>] [--isRequired <Boolean>] [--apiRequired <Boolean>] [--junctionTableId <UUID>] [--junctionTableName <String>] [--junctionSchemaId <UUID>] [--sourceFieldName <String>] [--targetFieldName <String>] [--useCompositeKey <Boolean>] [--createIndex <Boolean>] [--exposeInApi <Boolean>] [--nodeType <String>] [--nodeData <JSON>] [--grantRoles <String>] [--grantPrivileges <JSON>] [--policyType <String>] [--policyPrivileges <String>] [--policyRole <String>] [--policyPermissive <Boolean>] [--policyName <String>] [--policyData <JSON>] [--outFieldId <UUID>] [--outJunctionTableId <UUID>] [--outSourceFieldId <UUID>] [--outTargetFieldId <UUID>]
agentic-db relation-provision delete --id <UUID>
```

## Examples

### List all relationProvision records

```bash
agentic-db relation-provision list
```

### Create a relationProvision

```bash
agentic-db relation-provision create --databaseId <UUID> --relationType <String> --sourceTableId <UUID> --targetTableId <UUID> [--fieldName <String>] [--deleteAction <String>] [--isRequired <Boolean>] [--apiRequired <Boolean>] [--junctionTableId <UUID>] [--junctionTableName <String>] [--junctionSchemaId <UUID>] [--sourceFieldName <String>] [--targetFieldName <String>] [--useCompositeKey <Boolean>] [--createIndex <Boolean>] [--exposeInApi <Boolean>] [--nodeType <String>] [--nodeData <JSON>] [--grantRoles <String>] [--grantPrivileges <JSON>] [--policyType <String>] [--policyPrivileges <String>] [--policyRole <String>] [--policyPermissive <Boolean>] [--policyName <String>] [--policyData <JSON>] [--outFieldId <UUID>] [--outJunctionTableId <UUID>] [--outSourceFieldId <UUID>] [--outTargetFieldId <UUID>]
```

### Get a relationProvision by id

```bash
agentic-db relation-provision get --id <value>
```
