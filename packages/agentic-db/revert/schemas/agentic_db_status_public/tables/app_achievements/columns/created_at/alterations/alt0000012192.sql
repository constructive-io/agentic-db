-- Revert: schemas/agentic_db_status_public/tables/app_achievements/columns/created_at/alterations/alt0000012192


ALTER TABLE agentic_db_status_public.app_achievements 
  ALTER COLUMN created_at DROP DEFAULT;


