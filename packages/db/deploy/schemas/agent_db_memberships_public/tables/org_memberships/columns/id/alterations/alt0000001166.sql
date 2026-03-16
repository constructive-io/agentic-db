-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/id/alterations/alt0000001166
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/id/column



ALTER TABLE "agent_db_memberships_public".org_memberships 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

