-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/timezone/column


ALTER TABLE agentic_db_app_public.runtime_schedules 
  DROP COLUMN timezone RESTRICT;


