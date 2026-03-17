-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/updated_at/column


ALTER TABLE "agentic_db_memberships_public".org_grants 
  DROP COLUMN updated_at RESTRICT;


