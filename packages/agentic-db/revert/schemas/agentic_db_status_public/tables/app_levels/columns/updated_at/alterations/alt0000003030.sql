-- Revert: schemas/agentic_db_status_public/tables/app_levels/columns/updated_at/alterations/alt0000003030


ALTER TABLE agentic_db_status_public.app_levels 
  ALTER COLUMN updated_at DROP DEFAULT;


