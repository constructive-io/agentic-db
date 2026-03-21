-- Revert: schemas/agentic_db_permissions_public/tables/app_permissions/constraints/app_permissions_name_key/constraint


ALTER TABLE agentic_db_permissions_public.app_permissions 
  DROP CONSTRAINT app_permissions_name_key;


