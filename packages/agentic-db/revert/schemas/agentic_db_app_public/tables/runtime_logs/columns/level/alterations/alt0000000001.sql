-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/level/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.runtime_logs 
  ALTER COLUMN level DROP NOT NULL;


