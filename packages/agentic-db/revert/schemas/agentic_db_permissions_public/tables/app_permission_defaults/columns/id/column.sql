-- Revert: schemas/agentic_db_permissions_public/tables/app_permission_defaults/columns/id/column


ALTER TABLE agentic_db_permissions_public.app_permission_defaults 
  DROP COLUMN id RESTRICT;


