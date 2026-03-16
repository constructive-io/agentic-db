-- Revert: schemas/agent_db_invites_public/tables/invites/columns/invite_token/alterations/alt0000001610


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN invite_token DROP NOT NULL;


