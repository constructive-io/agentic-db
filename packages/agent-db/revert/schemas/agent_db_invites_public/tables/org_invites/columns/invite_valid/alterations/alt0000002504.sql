-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/invite_valid/alterations/alt0000002504


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN invite_valid DROP NOT NULL;


