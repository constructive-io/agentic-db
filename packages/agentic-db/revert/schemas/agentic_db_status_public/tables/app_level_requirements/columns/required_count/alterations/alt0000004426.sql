-- Revert: schemas/agentic_db_status_public/tables/app_level_requirements/columns/required_count/alterations/alt0000004426


ALTER TABLE agentic_db_status_public.app_level_requirements 
  ALTER COLUMN required_count DROP NOT NULL;


