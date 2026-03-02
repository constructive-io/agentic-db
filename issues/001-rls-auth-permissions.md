# Issue #001: RLS Auth & Permissions Debug

## Problem

When using the CLI to access `agent-os-*` database tables, we get:

```json
{
  "ok": false,
  "errors": [{ "message": "permission denied for table contacts" }]
}
```

Even after authenticating with a valid token.

## Root Cause Analysis

### 1. Separate Auth Domains

Each provisioned database has its **own auth schema**:

- **Main platform:** `constructive_auth_private.authenticate`
- **agent-os DB:** `agent-os-1772427594809-*-auth-private.authenticate`

When a user signs up on the main `auth.localhost:3000` endpoint, their token is stored in the **main constructive database**, not in the `agent-os-*` database.

### 2. RLS Module Configuration

From `services_public.api_modules WHERE name = 'rls_module'`:

```json
{
  "role_schema": "agent-os-1772427381667-ece70724-auth-public",
  "authenticate": "authenticate",
  "authenticate_schema": "agent-os-1772427381667-ece70724-auth-private",
  "authenticate_strict": "authenticate_strict"
}
```

Each database has a unique auth schema with hash suffix.

### 3. Auth Middleware Flow

From `/graphql/server/src/middleware/auth.ts`:

```typescript
const authQuery = `SELECT * FROM "${rlsModule.privateSchema.schemaName}"."${authFn}"($1)`;
// Executes: SELECT * FROM "agent-os-*-auth-private"."authenticate"($1)
```

The token validation happens against the **target database's auth schema**, not the main platform's.

### 4. Entity Membership

RLS policy `AuthzEntityMembership` requires:
- User must be a member of the `entity_id` they're accessing
- Checked via `constructive_memberships_private.org_memberships_sprt`

## Current Token Flow

1. User signs up at `auth.localhost:3000/graphql` (main platform)
2. Token created in `constructive` database's `constructive_auth_private` schema
3. User tries to access `app-public-agent-os-*.localhost:3000/graphql`
4. Server looks up token in `agent-os-*-auth-private.authenticate()` 
5. Token not found → user appears unauthenticated
6. RLS denies access

## Questions to Debug

1. **Should tokens be shared across databases?**
   - Or should each database have isolated auth?

2. **How does `bootstrapUser: true` work?**
   - Does it create a user in the new database?
   - Does it copy the provisioning user's token?

3. **What's the intended auth flow for provisioned databases?**
   - Sign up on main platform, then sign up again on each database?
   - Single sign-on across all databases?

## Files to Investigate

### Server Auth
- `/Users/constructivio/Constructive/constructive-io/constructive/graphql/server/src/middleware/auth.ts`
- `/Users/constructivio/Constructive/constructive-io/constructive/graphql/server/src/middleware/api.ts`

### RLS Module Config
```sql
SELECT am.*, d.name as db_name 
FROM services_public.api_modules am 
JOIN metaschema_public.database d ON am.database_id = d.id
WHERE am.name = 'rls_module';
```

### Auth Functions
```sql
-- Check what authenticate function does in agent-os db
\df "agent-os-1772427594809-*-auth-private".authenticate
```

### Bootstrap User Logic
- Search for `bootstrapUser` in provisioning code
- Check what happens when `modules: ['all']` is used

## Test Cases

### 1. Sign up on agent-os database directly
```bash
# Use auth endpoint for the specific database
curl -X POST "http://[::1]:3000/graphql" \
  -H "Host: auth-agent-os-1772427594809.localhost" \
  -H "Content-Type: application/json" \
  -d '{"query":"mutation { signUp(input: {email: \"test@example.com\", password: \"Test123!\"}) { result { accessToken userId } } }"}'
```

### 2. Check if bootstrapped user exists
```sql
-- In agent-os database
SELECT * FROM "<auth-schema>".users LIMIT 5;
```

### 3. Verify token in correct database
```sql
-- Check token storage location
SELECT * FROM "<auth-schema>".tokens WHERE token = '<token>';
```

## Proposed Solutions

### Option A: Database-Specific Auth
- Users must sign up on each database separately
- CLI needs separate `auth signup` command per context
- Tokens are scoped to their database

### Option B: Federated Auth (Platform SSO)
- Single sign-up on main platform
- Token validated against main platform, then passed to target DB
- Requires auth middleware changes

### Option C: Token Forwarding
- Main platform token is used to create a session token in target DB
- Like OAuth token exchange

## Related

- Provisioning code: `packages/provision/src/provision.ts`
- SDK codegen: `sdk/agent-os-sdk/`
- CLI auth commands: `sdk/cli/generated/cli/commands/auth.ts`

---

*Created: 2026-03-01*
*Status: Open*

---

## Update: Root Cause Found (2026-03-01 22:00)

### The Real Problem: Token Mismatch

The token stored in `.env` does **not** match the token hash in the database.

```sql
-- Our token hashes to:
SELECT encode(digest('b05ce4d60d...', 'sha256'), 'hex');
-- Result: fe77158ed3567a0e683f2debd97bca0dfaa86db5bad16dc2cc6aed67bd6e88ae

-- But the stored hash is:
SELECT encode(secret_hash, 'hex') FROM "agent-os-*-auth-private".session_credentials;
-- Result: 80d7ad33aa2753a00031d026fa572a9cd58a55853cb75418fc32bc4206faa1d5
```

### Why This Happened

The provision script was run **twice**, creating two databases:
1. `agent-os-1772427381667` (first run)
2. `agent-os-1772427594809` (second run, different token)

The `.env` file has the token from the **first run**, but we're using the DATABASE_ID from the **second run**.

### Database Architecture

Databases are **virtual** (multi-tenant schemas within `constructive` DB):

```
constructive (Postgres database)
├── agent-os-1772427594809-be847aa0-app-public    (tables)
├── agent-os-1772427594809-be847aa0-auth-private  (sessions, credentials)
├── agent-os-1772427594809-be847aa0-auth-public
└── ... (many more schemas per database)
```

### Solution

Re-provision a fresh database and **immediately** capture the token:

```bash
pnpm --filter @agentic-sdk/provision run provision
# Copy the ACCESS_TOKEN from output to .env right away
```

Or query the existing session to find a valid token... but the token is hashed one-way (SHA256), so we'd need to create a new one.

### Creating a New Token for Existing Database

Could add a script to create a fresh admin token:
1. Connect to the database's auth schema
2. Find the bootstrapped user_id
3. Create a new session + session_credential
4. Return the unhashed token


---

## Update: RLS Module Missing for App API (2026-03-01 22:10)

### The Real Bug

The `app-public-agent-os-*` endpoint has **no RLS module configured**!

```sql
-- API IDs for agent-os-1772427594809
SELECT a.id, a.name, d.subdomain 
FROM services_public.apis a 
JOIN services_public.domains d ON a.id = d.api_id 
WHERE d.subdomain LIKE '%agent-os-1772427594809%';

-- Results:
-- 414b84ee-... | public  | public-agent-os-1772427594809
-- 5174d102-... | app     | app-public-agent-os-1772427594809  <-- WE USE THIS ONE

-- RLS module exists for 'public' API but NOT for 'app' API:
SELECT * FROM metaschema_modules_public.rls_module 
WHERE api_id = '5174d102-50fe-4859-9f44-0334f40f7e8c';
-- (0 rows)  <-- EMPTY!
```

### Server Logs Confirm

```
[auth] rlsModule=missing, authenticate=none, authenticateStrict=none, privateSchema=none
[auth] No RLS module configured, skipping auth
```

### API Schema Mapping

| API | Subdomain | Has RLS Module | Schemas Exposed |
|-----|-----------|----------------|-----------------|
| `public` | `public-agent-os-*` | ✅ Yes | users, auth, memberships, profiles, etc. |
| `app` | `app-public-agent-os-*` | ❌ No | app-public (contacts, companies, etc.) |

### Why This Matters

- `public` API has auth working, but doesn't expose our CRM tables
- `app` API exposes our CRM tables, but has no auth — everyone is anonymous
- RLS denies anonymous users → "permission denied"

### Proposed Fixes

**Option 1: Add RLS module to `app` API**
```sql
INSERT INTO metaschema_modules_public.rls_module (
  database_id, api_id, private_schema_id, authenticate, authenticate_strict, ...
) SELECT 
  database_id, 
  '5174d102-50fe-4859-9f44-0334f40f7e8c',  -- app API
  private_schema_id, authenticate, authenticate_strict, ...
FROM metaschema_modules_public.rls_module 
WHERE api_id = '414b84ee-2ea7-4d75-bfdc-0f60c82fb1de';  -- copy from public API
```

**Option 2: Add app-public schema to `public` API**
- Keeps single authenticated endpoint
- May not be desired separation

**Option 3: Fix provisioning**
- The `app` API should be created with RLS module automatically
- Bug in the database provisioning workflow


---

## RESOLVED: SQL Fixes Applied (2026-03-01 22:14)

### Fix 1: RLS Module for App API

```sql
-- Disable trigger to avoid duplicate function creation
ALTER TABLE metaschema_modules_public.rls_module DISABLE TRIGGER insert_rls_module;

-- Copy RLS config from 'public' API to 'app' API
INSERT INTO metaschema_modules_public.rls_module (
  database_id, api_id, schema_id, private_schema_id,
  session_credentials_table_id, sessions_table_id, users_table_id,
  authenticate, authenticate_strict, "current_role", current_role_id
)
SELECT 
  database_id, '5174d102-50fe-4859-9f44-0334f40f7e8c'::uuid,
  schema_id, private_schema_id, session_credentials_table_id,
  sessions_table_id, users_table_id, authenticate, authenticate_strict,
  "current_role", current_role_id
FROM metaschema_modules_public.rls_module 
WHERE api_id = '414b84ee-2ea7-4d75-bfdc-0f60c82fb1de';

ALTER TABLE metaschema_modules_public.rls_module ENABLE TRIGGER insert_rls_module;
```

### Fix 2: Membership Support Table Sync

New users weren't being synced to `org_memberships_sprt`:

```sql
INSERT INTO "agent-os-*-memberships-private".org_memberships_sprt 
  (is_owner, is_admin, permissions, actor_id, entity_id)
SELECT is_owner, is_admin, permissions, actor_id, entity_id
FROM "agent-os-*-memberships-public".org_memberships
WHERE actor_id = '<user-id>'
ON CONFLICT (actor_id, entity_id) DO NOTHING;
```

### Underlying Issues to Fix in Platform

1. **App API missing RLS module** — provisioning should create RLS modules for all APIs that expose user data

2. **org_memberships_sprt sync** — trigger or function should auto-populate the support table when new memberships are created via signup

### Test Results

- ✅ Auth working (token validates, user_id recognized)
- ✅ SELECT contacts — works
- ✅ INSERT contact — works
- ✅ Full CRUD operational

---

*Status: **Resolved** (with manual SQL fixes)*
*Root causes documented for platform fixes*
