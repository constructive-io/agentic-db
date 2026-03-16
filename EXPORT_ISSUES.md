# Export & Provisioning Issues

Track known issues related to schema provisioning, SDK generation, and service exports here so they can be fixed upstream.

## 1. Schema Naming Mismatch in `services_public`
**Issue:** 
When provisioning with `CONSTRUCTIVE_SIMPLE_SCHEMA_NAMES=true` and `CONSTRUCTIVE_SCHEMA_USE_UNDERSCORES=true`, the actual Postgres schemas are cleanly created as `agent_db_app_public`, `agent_db_auth_public`, etc. 

However, the JSON configurations exported into `services_public.api_modules` (e.g., `rls_module`) and `services_public.site_modules` (e.g., `user_auth_module`) sometimes hardcode the `_services_` infix (e.g., `"role_schema": "agent_db_services_auth_public"`).

**Impact:** 
The GraphQL server's auth middleware fails because it tries to look up the hardcoded `agent_db_services_auth_private` schema instead of the actual `agent_db_auth_private` schema. This breaks all authenticated API calls.

**Fix Needed:** 
Ensure the export/provisioning scripts that generate the `rls_module` and `user_auth_module` JSON blobs dynamically respect the exact schema names created in the database, taking the simple naming/underscore env vars into account.
