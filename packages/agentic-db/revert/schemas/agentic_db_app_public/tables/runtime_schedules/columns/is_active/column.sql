-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/is_active/column


ALTER TABLE agentic_db_app_public.runtime_schedules 
  DROP COLUMN is_active RESTRICT;


