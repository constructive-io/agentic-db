-- Deploy: schemas/agentic_db_memberships_public/tables/org_grants/columns/permissions/alterations/alt0000001746
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/columns/permissions/column


COMMENT ON COLUMN agentic_db_memberships_public.org_grants.permissions IS 'Bitmask of permissions being granted or revoked';

