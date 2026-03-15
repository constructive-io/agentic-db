-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/invite_count/alterations/alt0000002510


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN invite_count DROP NOT NULL;


