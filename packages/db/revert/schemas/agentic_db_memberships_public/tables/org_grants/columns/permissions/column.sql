-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/permissions/column


ALTER TABLE "agentic_db_memberships_public".org_grants 
  DROP COLUMN permissions RESTRICT;


