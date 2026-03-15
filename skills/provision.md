---
name: agentic-db-provision
description: Provision a new agentic-db database on the Constructive platform with proper security and schemas
---

# Provision Agent-OS Database

Provisions a fully org-scoped Agent-OS database using the Constructive Node SDK.

## Prerequisites

- Constructive server running at `localhost:3000`
- `@constructive-io/node` installed
- `.env` file with credentials (see below)

## Environment Setup

Create `.env`:
```bash
# API endpoints
API_ENDPOINT=http://api.localhost:3000/graphql
AUTH_ENDPOINT=http://auth.localhost:3000/graphql

# Admin credentials (for provisioning)
ADMIN_EMAIL=admin@example.com
ADMIN_PASSWORD=SecurePass123!

# Database config
DATABASE_NAME=agentic-db
```

## Usage

```typescript
import { createClient } from '@constructive-io/node';
import 'dotenv/config';

const { API_ENDPOINT, AUTH_ENDPOINT, ADMIN_EMAIL, ADMIN_PASSWORD, DATABASE_NAME } = process.env;

// 1. Sign up / Sign in
const authClient = createClient({ endpoint: AUTH_ENDPOINT });

const signUpResult = await authClient.mutation.signUp({
  input: { email: ADMIN_EMAIL, password: ADMIN_PASSWORD },
}).execute();

const { accessToken, userId } = signUpResult.data.signUp.result!;

// 2. Create authenticated client
const apiClient = createClient({
  endpoint: API_ENDPOINT,
  headers: { Authorization: `Bearer ${accessToken}` },
});

// 3. Provision database
const provisionResult = await apiClient.databaseProvisionModule.create({
  data: {
    databaseName: DATABASE_NAME,
    ownerId: userId,
    subdomain: DATABASE_NAME,
    domain: 'localhost',
    modules: ['all'],  // Includes auth, users, memberships, permissions
    bootstrapUser: true,
    options: {},
  },
  select: {
    id: true,
    databaseId: true,
    status: true,
    errorMessage: true,
  },
}).execute();

const { databaseId } = provisionResult.data.createDatabaseProvisionModule.databaseProvisionModule;
console.log(`Database provisioned: ${databaseId}`);
```

## Provisioning Tables

### Org-Scoped Table (Standard Pattern)

```typescript
// Common config
const entityGrants = [
  ['select', '*'],
  ['insert', '*'],
  ['update', '*'],
  ['delete', '*'],
];

const entityPolicyData = {
  entity_field: 'entity_id',
  membership_type: 2,  // Org
};

async function createOrgTable(tableName: string): Promise<string> {
  const result = await apiClient.secureTableProvision.create({
    data: {
      databaseId,
      tableName,
      nodeType: 'DataEntityMembership',  // Adds entity_id, user_id
      useRls: true,
      grantRoles: ['authenticated'],
      grantPrivileges: entityGrants,
      policyType: 'AuthzEntityMembership',
      policyPermissive: true,
      policyData: entityPolicyData,
    },
    select: { id: true, tableId: true },
  }).execute();

  const tableId = result.data.createSecureTableProvision.secureTableProvision.tableId;

  // Add timestamps (created_at, updated_at)
  await apiClient.secureTableProvision.create({
    data: {
      databaseId,
      tableId,
      nodeType: 'DataTimestamps',
      nodeData: { include_id: false },
    },
    select: { id: true },
  }).execute();

  return tableId;
}

// Create tables
const contactsTableId = await createOrgTable('contacts');
const companiesTableId = await createOrgTable('companies');
const tasksTableId = await createOrgTable('tasks');
const memoriesTableId = await createOrgTable('memories');
```

### Adding Fields

```typescript
async function addField(
  tableId: string,
  name: string,
  type: string,
  opts: { isRequired?: boolean; defaultValue?: string } = {}
) {
  await apiClient.field.create({
    data: {
      tableId,
      name,
      type,
      isRequired: opts.isRequired ?? false,
      ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}),
    },
    select: { id: true },
  }).execute();
}

// Add fields to contacts
await addField(contactsTableId, 'first_name', 'text', { isRequired: true });
await addField(contactsTableId, 'last_name', 'text');
await addField(contactsTableId, 'email', 'text');
await addField(contactsTableId, 'headline', 'text');
await addField(contactsTableId, 'bio', 'text');

// Add embedding column (vector)
await addField(contactsTableId, 'embedding', 'vector(768)');
await addField(contactsTableId, 'embedding_text', 'text');
```

### Adding Relations

```typescript
// contacts HasMany notes (CASCADE delete)
await apiClient.relationProvision.create({
  data: {
    databaseId,
    relationType: 'RelationHasMany',
    sourceTableId: contactsTableId,
    targetTableId: notesTableId,
    deleteAction: 'c',  // CASCADE
  },
  select: { id: true },
}).execute();

// contacts <-> companies (ManyToMany)
await apiClient.relationProvision.create({
  data: {
    databaseId,
    relationType: 'RelationManyToMany',
    sourceTableId: contactsTableId,
    targetTableId: companiesTableId,
    junctionTableName: 'contact_companies',
    sourceFieldName: 'contact_id',
    targetFieldName: 'company_id',
    nodeType: 'DataEntityMembership',
    grantRoles: ['authenticated'],
    grantPrivileges: [['select', '*'], ['insert', '*'], ['delete', '*']],
    policyType: 'AuthzEntityMembership',
    policyPermissive: true,
    policyData: entityPolicyData,
  },
  select: { id: true, outJunctionTableId: true },
}).execute();
```

## Endpoints After Provisioning

| API | URL | Purpose |
|-----|-----|---------|
| Auth | `http://auth-${dbName}.localhost:3000/graphql` | Sign in/up |
| App | `http://app-public-${dbName}.localhost:3000/graphql` | CRUD operations |

## Next Steps

1. Run codegen to generate SDK: `skills/codegen.md`
2. Use generated SDK for CRUD: `skills/crm/contacts.md`

## See Also

- `skills/RULES.md` — Development rules
- `skills/safegres.md` — Security patterns
- `skills/codegen.md` — SDK generation
