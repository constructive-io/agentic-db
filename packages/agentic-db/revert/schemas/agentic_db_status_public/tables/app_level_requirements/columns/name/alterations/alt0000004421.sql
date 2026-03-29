-- Revert: schemas/agentic_db_status_public/tables/app_level_requirements/columns/name/alterations/alt0000004421


ALTER TABLE agentic_db_status_public.app_level_requirements 
  ALTER COLUMN name DROP NOT NULL;


