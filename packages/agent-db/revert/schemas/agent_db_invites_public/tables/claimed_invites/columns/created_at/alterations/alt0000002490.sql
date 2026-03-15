-- Revert: schemas/agent_db_invites_public/tables/claimed_invites/columns/created_at/alterations/alt0000002490


ALTER TABLE "agent_db_invites_public".claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


