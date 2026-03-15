-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/columns/is_grant/alterations/alt0000003643
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/columns/is_grant/column


COMMENT ON COLUMN "agent_db_memberships_public".org_grants.is_grant IS E'True to grant the permissions, false to revoke them';

