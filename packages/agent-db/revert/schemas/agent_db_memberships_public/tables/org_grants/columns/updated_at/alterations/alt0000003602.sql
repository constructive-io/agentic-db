-- Revert: schemas/agent_db_memberships_public/tables/org_grants/columns/updated_at/alterations/alt0000003602


ALTER TABLE "agent_db_memberships_public".org_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


