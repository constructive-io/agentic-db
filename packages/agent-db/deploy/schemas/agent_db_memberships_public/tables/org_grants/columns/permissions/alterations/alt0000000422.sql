-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/columns/permissions/alterations/alt0000000422
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/columns/permissions/column


COMMENT ON COLUMN agent_db_memberships_public.org_grants.permissions IS 'Bitmask of permissions being granted or revoked';

