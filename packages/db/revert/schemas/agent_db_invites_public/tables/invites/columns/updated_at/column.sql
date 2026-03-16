-- Revert: schemas/agent_db_invites_public/tables/invites/columns/updated_at/column


ALTER TABLE "agent_db_invites_public".invites 
  DROP COLUMN updated_at RESTRICT;


