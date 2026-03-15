-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/is_admin/alterations/alt0000003601
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/is_admin/column


COMMENT ON COLUMN "agent_db_memberships_public".org_members.is_admin IS 'Whether this member has admin privileges';

