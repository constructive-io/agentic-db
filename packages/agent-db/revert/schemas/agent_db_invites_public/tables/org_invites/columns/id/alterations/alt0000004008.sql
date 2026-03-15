-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/id/alterations/alt0000004008


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN id DROP NOT NULL;


