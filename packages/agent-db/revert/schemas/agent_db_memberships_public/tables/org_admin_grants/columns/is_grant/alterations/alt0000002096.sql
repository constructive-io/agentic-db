-- Revert: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/is_grant/alterations/alt0000002096


ALTER TABLE "agent_db_memberships_public".org_admin_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


