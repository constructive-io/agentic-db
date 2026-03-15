-- Revert: schemas/agent_db_invites_public/tables/invites/columns/data/column


ALTER TABLE "agent_db_invites_public".invites 
  DROP COLUMN data RESTRICT;


