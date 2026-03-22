-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/config/column


ALTER TABLE agentic_db_app_public.runtime_schedules 
  DROP COLUMN config RESTRICT;


