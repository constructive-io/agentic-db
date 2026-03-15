-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_disabled/alterations/alt0000000101
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_disabled/column


COMMENT ON COLUMN agent_db_memberships_public.app_memberships.is_disabled IS 'Whether this membership is temporarily disabled';

