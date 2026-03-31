-- Revert: schemas/agentic_db_status_public/tables/app_level_requirements/columns/level/alterations/alt0000002324


ALTER TABLE agentic_db_status_public.app_level_requirements 
  ALTER COLUMN level DROP NOT NULL;


