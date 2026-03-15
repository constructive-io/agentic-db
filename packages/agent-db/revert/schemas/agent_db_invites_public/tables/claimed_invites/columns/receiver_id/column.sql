-- Revert: schemas/agent_db_invites_public/tables/claimed_invites/columns/receiver_id/column


ALTER TABLE "agent_db_invites_public".claimed_invites 
  DROP COLUMN receiver_id RESTRICT;


