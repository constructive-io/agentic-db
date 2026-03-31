-- Revert: schemas/agentic_db_permissions_public/tables/app_permissions/columns/id/alterations/alt0000002146


ALTER TABLE agentic_db_permissions_public.app_permissions 
  ALTER COLUMN id DROP NOT NULL;


