-- Revert: schemas/agent_db_memberships_public/tables/org_grants/columns/created_at/alterations/alt0000003601


ALTER TABLE "agent_db_memberships_public".org_grants 
  ALTER COLUMN created_at DROP DEFAULT;


