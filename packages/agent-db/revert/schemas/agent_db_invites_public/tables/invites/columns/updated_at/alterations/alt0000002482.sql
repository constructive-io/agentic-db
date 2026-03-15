-- Revert: schemas/agent_db_invites_public/tables/invites/columns/updated_at/alterations/alt0000002482


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN updated_at DROP DEFAULT;


