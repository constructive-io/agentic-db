-- Revert: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/created_at/alterations/alt0000000400


ALTER TABLE "agentic_db_memberships_public".org_admin_grants 
  ALTER COLUMN created_at DROP DEFAULT;


