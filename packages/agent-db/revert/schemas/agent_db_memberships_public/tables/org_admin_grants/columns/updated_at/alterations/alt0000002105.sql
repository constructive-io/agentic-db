-- Revert: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/updated_at/alterations/alt0000002105


ALTER TABLE "agent_db_memberships_public".org_admin_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


