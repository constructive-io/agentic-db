-- Revert: schemas/agent_db_invites_public/tables/claimed_invites/columns/created_at/column


ALTER TABLE "agent_db_invites_public".claimed_invites 
  DROP COLUMN created_at RESTRICT;


