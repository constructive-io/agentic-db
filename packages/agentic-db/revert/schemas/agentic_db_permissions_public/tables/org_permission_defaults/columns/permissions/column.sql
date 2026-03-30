-- Revert: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/permissions/column


ALTER TABLE "agentic_db_permissions_public".org_permission_defaults 
  DROP COLUMN permissions RESTRICT;


