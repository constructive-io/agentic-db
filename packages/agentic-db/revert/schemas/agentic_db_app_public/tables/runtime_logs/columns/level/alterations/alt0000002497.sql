-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/level/alterations/alt0000002497


ALTER TABLE agentic_db_app_public.runtime_logs 
  ALTER COLUMN level DROP NOT NULL;


