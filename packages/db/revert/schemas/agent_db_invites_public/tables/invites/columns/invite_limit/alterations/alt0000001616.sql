-- Revert: schemas/agent_db_invites_public/tables/invites/columns/invite_limit/alterations/alt0000001616


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN invite_limit DROP NOT NULL;


