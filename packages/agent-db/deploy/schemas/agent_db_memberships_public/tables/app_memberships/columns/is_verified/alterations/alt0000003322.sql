-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_verified/alterations/alt0000003322
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_verified/column


COMMENT ON COLUMN "agent_db_memberships_public".app_memberships.is_verified IS E'Whether this member has been verified (e.g. email confirmation)';

