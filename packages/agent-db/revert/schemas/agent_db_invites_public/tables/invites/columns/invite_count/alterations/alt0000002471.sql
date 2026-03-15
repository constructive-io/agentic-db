-- Revert: schemas/agent_db_invites_public/tables/invites/columns/invite_count/alterations/alt0000002471


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN invite_count DROP NOT NULL;


