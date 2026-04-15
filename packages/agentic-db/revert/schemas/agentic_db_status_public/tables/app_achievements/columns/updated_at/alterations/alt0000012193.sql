-- Revert: schemas/agentic_db_status_public/tables/app_achievements/columns/updated_at/alterations/alt0000012193


ALTER TABLE agentic_db_status_public.app_achievements 
  ALTER COLUMN updated_at DROP DEFAULT;


