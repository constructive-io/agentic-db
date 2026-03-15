-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/columns/id/alterations/alt0000004000
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/columns/id/column



ALTER TABLE "agent_db_invites_public".claimed_invites 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

