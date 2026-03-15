-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/columns/is_grant/alterations/alt0000001859
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/columns/is_grant/column


COMMENT ON COLUMN "agent_db_memberships_public".app_grants.is_grant IS E'True to grant the permissions, false to revoke them';

