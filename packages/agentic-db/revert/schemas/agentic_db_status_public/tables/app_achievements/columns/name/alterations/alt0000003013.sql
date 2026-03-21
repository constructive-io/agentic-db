-- Revert: schemas/agentic_db_status_public/tables/app_achievements/columns/name/alterations/alt0000003013


ALTER TABLE agentic_db_status_public.app_achievements 
  ALTER COLUMN name DROP NOT NULL;


