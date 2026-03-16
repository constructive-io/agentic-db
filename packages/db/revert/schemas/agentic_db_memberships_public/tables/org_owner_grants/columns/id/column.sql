-- Revert: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/id/column


ALTER TABLE "agentic_db_memberships_public".org_owner_grants 
  DROP COLUMN id RESTRICT;


