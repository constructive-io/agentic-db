-- Revert: schemas/agentic_db_status_public/tables/app_level_requirements/columns/created_at/alterations/alt0000003046


ALTER TABLE agentic_db_status_public.app_level_requirements 
  ALTER COLUMN created_at DROP DEFAULT;


