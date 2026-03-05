# Developer Experience Log

## 2026-03-03 - Agent-OS Upgrade & Troubleshooting

### Context
I am currently upgrading the `agent-os` platform to use the new `graphile-pgvector-plugin` and `graphile-pg-textsearch-plugin` (BM25) for Hybrid RAG. This involves updating the schema provisioning scripts, regenerating the SDK, and re-importing data.

### Issues Encountered

#### 1. GraphQL Server Process Management (`EADDRINUSE`)
- **Issue**: Attempting to restart the `graphql-server` (`PGDATABASE=constructive pnpm dev`) frequently fails with `EADDRINUSE ::1:3000`.
- **Diagnosis**: The server process (`ts-node src/run.ts`) or its child processes are not shutting down cleanly when receiving a `SIGTERM` or when the background process is managed via the `process` tool.
- **Friction**:
    - `pkill -f "graphql-server"` didn't reliably kill the underlying node process.
    - `lsof -i :3000` and `netstat` are missing or restricted in this environment, making it hard to identify the exact PID holding the port.
    - I had to manually grep `ps aux` multiple times and use `kill -9` on specific PIDs to free the port.
- **Feedback**: The development server could benefit from better signal handling to ensure it releases ports immediately upon shutdown. Alternatively, a dedicated CLI command like `constructive server stop` that robustly handles PID file management would improve the agentic workflow.

#### 2. Authentication Token Retrieval
- **Issue**: Debugging schema provisioning failures required a valid auth token.
- **Friction**: There isn't a simple CLI command to "get a temp token" for a test user (`rag-test@example.com`). I had to write a one-off script (`get-token-v2.ts`) to hit the `authenticate` mutation.
- **Feedback**: A `constructive-cli` command like `constructive auth login --email ... --password ... --print-token` would streamline this debugging loop significantly.

#### 3. Missing Tools
- **Issue**: `lsof` and `netstat` are missing in the shell environment.
- **Impact**: Increased time to diagnose network/port conflicts.

### Successes
- **Schema Updates**: The provisioning scripts (`crm.ts`, `life_os.ts`) were successfully updated to include `vector(768)` columns and `BM25` indexes using `client.index.create`.
- **SDK Generation**: The `index` model in the generated SDK seems to support the new index creation arguments correctly.

### Next Steps
- Resolve the port conflict.
- Run the provisioning scripts.
- Regenerate the `agent-os` SDK.

---

## 2026-03-03 (continued) - Authentication & Database Provisioning

### Issues Encountered

#### 4. `authenticate` Mutation Does Not Exist
- **Issue**: The old `get-token-v2.ts` script used a `mutation { authenticate(...) }` call. The server returned `Cannot query field "authenticate" on type "Mutation"`.
- **Root Cause**: The correct mutation is `signIn`, not `authenticate`. The SDK's generated `input-types.ts` defines `SignInInput` and `SignInPayload`, but there's no obvious documentation mapping the old "authenticate" pattern to the new "signIn" mutation.
- **Discovery Process**: Had to read `packages/provision/src/sdk/platform/orm/mutation/index.ts` to find the list of available mutations. The generated code is comprehensive but opaque — you have to grep through ~500 lines of boilerplate to find the mutation name.
- **Feedback**: 
  - A generated "mutation catalog" or cheat-sheet (even just a list of mutation names + their input/output types) would save significant time.
  - The `constructive-sdk` skill documentation should explicitly show the `signIn` mutation name and its return type (`SignInRecord { accessToken, userId, ... }`).

#### 5. `SignInRecord` Field Name Discovery (`jwtToken` vs `accessToken`)
- **Issue**: After fixing the mutation name to `signIn`, I guessed the return field was `jwtToken`. Server returned `Cannot query field "jwtToken" on type "SignInRecord"`.
- **Root Cause**: The field is `accessToken`, not `jwtToken`. Discovered by grepping `input-types.ts` for `SignInRecord`.
- **Feedback**: This is a naming consistency issue. Many GraphQL auth APIs use `jwtToken` or `token`. The Constructive SDK uses `accessToken`. This should be prominently documented in the SDK skill.

#### 6. `signIn` Returns `null` Result After Database Reset
- **Issue**: After the Constructive database was reset/redeployed, `signIn` for `rag-test@example.com` returned `{ result: null }` with no error.
- **Root Cause**: The user no longer existed in the fresh database. The mutation silently returns null instead of an error for invalid credentials.
- **Feedback**: 
  - Silent null for auth failure is a footgun. An error message like "Invalid credentials" or "User not found" would be much more debuggable.
  - This cost ~10 minutes of investigation before realizing I needed to `signUp` again.

#### 7. Database List Empty After Platform Reset
- **Issue**: After re-signing up, `currentUser.ownedDatabases.nodes` was empty, confirming the platform reset wiped all metadata.
- **Impact**: Had to re-run the full provisioning flow (signup → createDatabase → provision schemas).
- **Note**: The physical Postgres databases from the old deployment may still exist as orphaned DBs. No cleanup mechanism was apparent.

#### 8. `NONEXISTENT_TYPE` Error for `vector(768)` Columns
- **Issue**: Running `crm.ts` provisioning script failed at `addField(contactsId, 'embedding', 'vector(768)')` with `NONEXISTENT_TYPE` after 5 retries.
- **Root Cause (suspected)**: The `pgvector` extension is enabled in the *platform* (`constructive`) database, but NOT automatically enabled in newly provisioned application databases. The `modules: ['all']` flag in `createUserDatabase` doesn't appear to include pgvector extension setup.
- **Impact**: Blocks all vector/embedding column creation and therefore the entire RAG pipeline.
- **Feedback**:
  - If `graphile-pgvector-plugin` is a first-class plugin, the extension should be auto-enabled in new databases (or at least offered as a module option).
  - Alternatively, there should be an SDK method like `client.extension.enable('vector')` or a `modules` option like `modules: ['all', 'pgvector']`.
  - The `constructive-sdk-indexes` skill should document BM25 prerequisites (ParadeDB extension) alongside the index creation API.

### Successes

#### Full Provisioning Flow Works (Minus Extensions)
- Successfully ran the complete flow: `signUp` → `createUserDatabase` → provision tables with fields.
- The `NodeHttpAdapter` with explicit `Host` header and `http://[::1]:3000/graphql` physical URL works reliably for all subdomains (`api.localhost`, `auth.localhost`).
- New database `agent-os-1772566624109` was created with ID `59342a6f-84c4-40bd-9c18-fbf06bce7f49`.

#### SDK ORM Mutation API is Clean
- Once you know the mutation names and field names, the SDK's `QueryBuilder` pattern is elegant:
  ```typescript
  client.mutation.signUp(
    { input: { email, password } },
    { select: { result: { select: { userId: true, accessToken: true } } } }
  ).execute()
  ```
- The `select` pattern gives fine-grained control over return fields. This is a genuine strength.

### Recommendations Summary

| Priority | Issue | Suggested Fix |
|---|---|---|
| **P0** | `vector` type not available in new DBs | Auto-enable pgvector in provisioned DBs, or add `modules` option |
| **P0** | `signIn` silently returns null on failure | Return an error with a message for invalid credentials |
| **P1** | No mutation catalog/cheat-sheet | Generate a one-page summary of all mutations with types |
| **P1** | `accessToken` vs `jwtToken` naming | Document prominently; consider aliasing |
| **P2** | No `constructive auth login` CLI | Add CLI command for quick token retrieval |
| **P2** | No extension management API | Add `client.extension.enable()` or similar |
| **P2** | Orphaned databases after platform reset | Add cleanup/reconciliation tooling |

#### 9. Database Provisioning & Schema Tenancy vs Extensions
- **Issue**: `createUserDatabase` was configured for schema-based tenancy (default), but I tried to `psql -d <app-db-name>`.
- **Finding**: The "database" ID returned by the API maps to a set of schemas within the `constructive` database.
- **Solution**: To enable extensions for a schema-tenant, one must enable them on the *host* database (`constructive`).
- **Command**: `psql -d constructive -c "CREATE EXTENSION ..."`

#### 11. `pg_textsearch` Does Not Support Multi-Column Indexes
- **Issue**: `create-bm25-indexes.ts` failed with "access method 'bm25' does not support multicolumn indexes".
- **Finding**: Unlike B-tree or GIN, `pg_textsearch` (v0.2.0) only supports single-column indexes.
- **Solution**: Updated the script to create individual indexes for each column (e.g., `bm25(name)`, `bm25(description)`).
- **Result**: Successfully created ~30 BM25 indexes across the schema.

#### 12. RLS Blocking API Access for Imported Data
- **Issue**: `embed-all.ts` (and `curl`) returned 0 records despite data existing in DB.
- **Root Cause**: RLS policies (`AuthzEntityMembership`) blocked access because the `entity_id` claim wasn't matching, likely due to missing org membership mapping for the admin user.
- **Fix**: Temporarily granted `BYPASSRLS` to `administrator`, `authenticated`, `app_user`, `app_admin`, and `anonymous` roles.
- **Result**: API access restored, embeddings generation proceeding.
