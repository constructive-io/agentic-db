-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/permissions/column


ALTER TABLE "agentic_db_memberships_public".org_memberships 
  DROP COLUMN permissions RESTRICT;


