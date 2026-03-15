-- Revert: schemas/agent_db_invites_public/tables/invites/columns/expires_at/alterations/alt0000002478


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN expires_at DROP NOT NULL;


