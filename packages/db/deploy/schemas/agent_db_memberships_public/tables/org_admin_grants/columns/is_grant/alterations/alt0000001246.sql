-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/is_grant/alterations/alt0000001246
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/is_grant/column


COMMENT ON COLUMN "agent_db_memberships_public".org_admin_grants.is_grant IS E'True to grant admin, false to revoke admin';

