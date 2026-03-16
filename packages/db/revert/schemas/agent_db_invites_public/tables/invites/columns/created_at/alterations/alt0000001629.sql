-- Revert: schemas/agent_db_invites_public/tables/invites/columns/created_at/alterations/alt0000001629


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN created_at DROP DEFAULT;


