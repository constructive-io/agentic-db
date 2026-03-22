-- Revert: schemas/agentic_db_status_public/tables/app_achievements/columns/id/alterations/alt0000001346


ALTER TABLE agentic_db_status_public.app_achievements 
  ALTER COLUMN id DROP NOT NULL;


