# secureTableProvision

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SecureTableProvision records via agentic-db CLI

## Usage

```bash
agentic-db secure-table-provision list
agentic-db secure-table-provision get --id <UUID>
agentic-db secure-table-provision create --databaseId <UUID> [--schemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--nodeType <String>] [--useRls <Boolean>] [--nodeData <JSON>] [--fields <JSON>] [--grantRoles <String>] [--grantPrivileges <JSON>] [--policyType <String>] [--policyPrivileges <String>] [--policyRole <String>] [--policyPermissive <Boolean>] [--policyName <String>] [--policyData <JSON>] [--outFields <UUID>]
agentic-db secure-table-provision update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--nodeType <String>] [--useRls <Boolean>] [--nodeData <JSON>] [--fields <JSON>] [--grantRoles <String>] [--grantPrivileges <JSON>] [--policyType <String>] [--policyPrivileges <String>] [--policyRole <String>] [--policyPermissive <Boolean>] [--policyName <String>] [--policyData <JSON>] [--outFields <UUID>]
agentic-db secure-table-provision delete --id <UUID>
```

## Examples

### List all secureTableProvision records

```bash
agentic-db secure-table-provision list
```

### Create a secureTableProvision

```bash
agentic-db secure-table-provision create --databaseId <UUID> [--schemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--nodeType <String>] [--useRls <Boolean>] [--nodeData <JSON>] [--fields <JSON>] [--grantRoles <String>] [--grantPrivileges <JSON>] [--policyType <String>] [--policyPrivileges <String>] [--policyRole <String>] [--policyPermissive <Boolean>] [--policyName <String>] [--policyData <JSON>] [--outFields <UUID>]
```

### Get a secureTableProvision by id

```bash
agentic-db secure-table-provision get --id <value>
```
