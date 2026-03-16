-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/updated_at/alterations/alt0000001630
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/updated_at/column


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN updated_at SET DEFAULT now();

