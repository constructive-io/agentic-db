-- Revert: schemas/agentic_db_status_public/tables/app_level_requirements/columns/level/column


ALTER TABLE agentic_db_status_public.app_level_requirements 
  DROP COLUMN level RESTRICT;


