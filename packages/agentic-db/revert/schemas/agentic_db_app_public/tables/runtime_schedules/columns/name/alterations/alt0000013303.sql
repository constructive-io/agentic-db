-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/name/alterations/alt0000013303


ALTER TABLE agentic_db_app_public.runtime_schedules 
  ALTER COLUMN name DROP NOT NULL;


