-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_disabled/alterations/alt0000000357
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_disabled/column


COMMENT ON COLUMN agent_db_memberships_public.org_memberships.is_disabled IS 'Whether this membership is temporarily disabled';

