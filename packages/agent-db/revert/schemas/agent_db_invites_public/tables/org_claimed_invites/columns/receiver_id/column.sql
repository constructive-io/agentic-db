-- Revert: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/receiver_id/column


ALTER TABLE "agent_db_invites_public".org_claimed_invites 
  DROP COLUMN receiver_id RESTRICT;


