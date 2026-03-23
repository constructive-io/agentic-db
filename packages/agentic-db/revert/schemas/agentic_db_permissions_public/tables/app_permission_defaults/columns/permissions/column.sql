-- Revert: schemas/agentic_db_permissions_public/tables/app_permission_defaults/columns/permissions/column


ALTER TABLE agentic_db_permissions_public.app_permission_defaults 
  DROP COLUMN permissions RESTRICT;


