-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/invite_token/alterations/alt0000004015


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN invite_token DROP NOT NULL;


