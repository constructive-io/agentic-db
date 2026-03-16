-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/id/alterations/alt0000001243
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/id/column



ALTER TABLE "agent_db_memberships_public".org_admin_grants 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

