-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/id/alterations/alt0000002084
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/id/column



ALTER TABLE "agent_db_memberships_public".org_members 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

