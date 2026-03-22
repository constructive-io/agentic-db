-- Revert: schemas/agentic_db_permissions_public/tables/app_permissions/columns/bitstr/alterations/alt0000004706


ALTER TABLE agentic_db_permissions_public.app_permissions 
  ALTER COLUMN bitstr DROP NOT NULL;


