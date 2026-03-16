-- Revert: schemas/agent_db_invites_public/tables/claimed_invites/columns/updated_at/alterations/alt0000001639


ALTER TABLE "agent_db_invites_public".claimed_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


