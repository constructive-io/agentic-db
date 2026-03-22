-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/name/alterations/alt0000002531


ALTER TABLE agentic_db_app_public.runtime_schedules 
  ALTER COLUMN name DROP NOT NULL;


