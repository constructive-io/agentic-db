-- Revert: schemas/agent_db_invites_public/tables/claimed_invites/columns/data/column


ALTER TABLE "agent_db_invites_public".claimed_invites 
  DROP COLUMN data RESTRICT;


