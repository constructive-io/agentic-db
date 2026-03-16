-- Revert: schemas/agent_db_invites_public/tables/invites/columns/id/column


ALTER TABLE "agent_db_invites_public".invites 
  DROP COLUMN id RESTRICT;


