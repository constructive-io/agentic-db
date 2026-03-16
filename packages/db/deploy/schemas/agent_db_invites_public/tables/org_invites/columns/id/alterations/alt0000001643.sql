-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/id/alterations/alt0000001643
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/id/column



ALTER TABLE "agent_db_invites_public".org_invites 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

