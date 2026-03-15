-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/invite_limit/alterations/alt0000003973


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN invite_limit DROP NOT NULL;


