-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/id/alterations/alt0000002526
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/id/column



ALTER TABLE "agent_db_invites_public".org_claimed_invites 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

