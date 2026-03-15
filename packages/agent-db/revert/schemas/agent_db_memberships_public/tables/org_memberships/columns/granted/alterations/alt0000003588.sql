-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/granted/alterations/alt0000003588


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN granted DROP NOT NULL;


