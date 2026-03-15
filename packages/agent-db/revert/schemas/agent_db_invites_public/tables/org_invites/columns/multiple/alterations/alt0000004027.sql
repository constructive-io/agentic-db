-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/multiple/alterations/alt0000004027


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN multiple DROP NOT NULL;


