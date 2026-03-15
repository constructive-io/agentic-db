-- Revert: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/is_grant/alterations/alt0000003576


ALTER TABLE "agent_db_memberships_public".org_owner_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


