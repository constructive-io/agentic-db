# Troubleshooting

Common errors encountered during integration test development and their fixes.

## "Cannot use GraphQLObjectType from another module or realm"

**Cause:** Multiple versions of the `graphql` package in the dependency tree (e.g., 16.13.0 and 16.13.1). GraphQL objects created by one instance are incompatible with another.

**Fix:**
1. Ensure `pnpm.overrides` in root `package.json` pins `graphql` to `16.13.0`
2. Pin ALL PostGraphile sub-packages to exact versions (see SKILL.md for full list)
3. Run `pnpm install` to regenerate lockfile
4. Verify with: `pnpm list graphql --depth=10 | grep graphql` — should show only one version

## "Cannot read properties of undefined (reading 'items')" on findMany

**Cause:** Same root cause as above — duplicate `graphql` modules cause PostGraphile connection resolvers to fail silently.

**Additional cause:** Node.js version mismatch. Node.js 20 and Node.js 22 produce different pnpm module resolution behavior, leading to different deduplication results even with the same overrides.

**Fix:**
1. Use **Node.js 22+** everywhere (local and CI)
2. Ensure `pnpm.overrides` pins all PostGraphile packages
3. Use `--frozen-lockfile` in CI to prevent drift

## "Returned type null is not suitable for use as root query operation type"

**Cause:** PostGraphile introspected an empty database — no tables exist in the target schema.

**Fix:** Ensure seed SQL (`schema.sql`) runs before schema building. The `seed.sqlfile()` call in `beforeAll` handles this. Verify that:
1. The schema name in `schema.sql` matches the `SCHEMAS` array in the test
2. `CREATE SCHEMA IF NOT EXISTS` is present
3. All `CREATE TABLE` statements reference the correct schema

## "permission denied for schema agentic_db_app_public"

**Cause:** Missing `GRANT` statements in `schema.sql`.

**Fix:** Add at the bottom of `schema.sql`:
```sql
GRANT USAGE ON SCHEMA "agentic_db_app_public" TO PUBLIC;
GRANT CREATE ON SCHEMA "agentic_db_app_public" TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".<table_name> TO PUBLIC;
```

## CI passes locally but fails on CI (or vice versa)

**Possible causes:**
1. **Node.js version mismatch** — Check `node --version` locally vs CI workflow. Must both be 22+.
2. **pnpm version mismatch** — Pin to exact version (e.g., `10.22.0`) in both places.
3. **Lockfile drift** — Use `--frozen-lockfile` in CI. If it fails, the lockfile is out of date. Run `pnpm install` locally and commit the updated lockfile.
4. **Docker image difference** — CI uses `constructiveio/postgres-plus:18`. Make sure local Docker uses the same image.

**Debug steps for CI:**
1. Check the "Debug dependency tree" step output in CI logs
2. Look for multiple `graphql` versions
3. Compare `pnpm --version` and `node --version` between local and CI

## Codegen fails: "Introspection failed"

**Cause:** The graphile-test schema is not built correctly — usually a seed SQL error.

**Fix:**
1. Check that `schema.sql` has valid SQL (no syntax errors)
2. Ensure `vector` extension is available: `CREATE EXTENSION IF NOT EXISTS vector;`
3. Ensure the Docker image has all required extensions

## Jest timeout (120s)

**Cause:** The codegen pipeline (introspection + generation + compilation) can take 30-60 seconds.

**Fix:** The timeout is set to 120000ms in `jest.setTimeout(120000)`. If tests still timeout:
1. Check if PostgreSQL is responding (`PGHOST`, `PGPORT`, `PGUSER`, `PGPASSWORD` are set)
2. Check if the Docker container is running
3. Check for deadlocks in the database

## "MODULE_NOT_FOUND" for @constructive-io packages

**Cause:** Dependencies not installed or version mismatch.

**Fix:**
1. Run `pnpm install` at workspace root
2. Check that `packages/integration-tests/package.json` lists all required `@constructive-io/*` packages
3. Verify versions match `constructive-io/constructive` repo

## pnpm lockfile conflict

**Cause:** Different pnpm versions generate different lockfile formats.

**Fix:**
1. Pin pnpm version: `corepack enable && corepack prepare pnpm@10.22.0 --activate`
2. Delete `pnpm-lock.yaml` and `node_modules/`, then run `pnpm install`
3. Commit the regenerated lockfile
