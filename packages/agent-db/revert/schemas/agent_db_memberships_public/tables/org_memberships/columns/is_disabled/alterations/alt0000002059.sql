-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_disabled/alterations/alt0000002059


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN is_disabled DROP NOT NULL;


