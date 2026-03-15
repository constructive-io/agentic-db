-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/columns/updated_at/alterations/alt0000002491
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/columns/updated_at/column


ALTER TABLE "agent_db_invites_public".claimed_invites 
  ALTER COLUMN updated_at SET DEFAULT now();

