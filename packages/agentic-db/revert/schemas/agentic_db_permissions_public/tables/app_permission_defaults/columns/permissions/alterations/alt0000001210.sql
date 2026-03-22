-- Revert: schemas/agentic_db_permissions_public/tables/app_permission_defaults/columns/permissions/alterations/alt0000001210


ALTER TABLE agentic_db_permissions_public.app_permission_defaults 
  ALTER COLUMN permissions DROP NOT NULL;


