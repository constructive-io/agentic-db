-- Revert: schemas/agentic_db_status_public/tables/app_level_requirements/columns/id/alterations/alt0000012207


ALTER TABLE agentic_db_status_public.app_level_requirements 
  ALTER COLUMN id DROP NOT NULL;


