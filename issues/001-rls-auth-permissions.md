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
