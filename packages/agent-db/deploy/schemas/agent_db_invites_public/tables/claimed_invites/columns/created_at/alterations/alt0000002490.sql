-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/columns/created_at/alterations/alt0000002490
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/columns/created_at/column


ALTER TABLE "agent_db_invites_public".claimed_invites 
  ALTER COLUMN created_at SET DEFAULT now();

