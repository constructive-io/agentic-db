-- Revert: schemas/agentic_db_permissions_public/tables/org_permissions/columns/bitnum/column


ALTER TABLE "agentic_db_permissions_public".org_permissions 
  DROP COLUMN bitnum RESTRICT;


