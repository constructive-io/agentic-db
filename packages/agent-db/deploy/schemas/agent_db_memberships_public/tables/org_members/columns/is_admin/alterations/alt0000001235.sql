-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/is_admin/alterations/alt0000001235
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/is_admin/column


COMMENT ON COLUMN "agent_db_memberships_public".org_members.is_admin IS 'Whether this member has admin privileges';

