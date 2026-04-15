-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/id/alterations/alt0000015557


ALTER TABLE agentic_db_app_public.runtime_schedules 
  ALTER COLUMN id DROP NOT NULL;


