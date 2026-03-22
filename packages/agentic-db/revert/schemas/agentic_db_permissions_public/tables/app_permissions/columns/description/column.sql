-- Revert: schemas/agentic_db_permissions_public/tables/app_permissions/columns/description/column


ALTER TABLE agentic_db_permissions_public.app_permissions 
  DROP COLUMN description RESTRICT;


