-- Revert: schemas/agent_db_memberships_public/tables/org_grants/columns/is_grant/alterations/alt0000003593


ALTER TABLE "agent_db_memberships_public".org_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


