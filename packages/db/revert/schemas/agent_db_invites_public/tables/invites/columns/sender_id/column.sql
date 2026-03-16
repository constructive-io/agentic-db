-- Revert: schemas/agent_db_invites_public/tables/invites/columns/sender_id/column


ALTER TABLE "agent_db_invites_public".invites 
  DROP COLUMN sender_id RESTRICT;


