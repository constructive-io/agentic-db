-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/created_at/column


ALTER TABLE agentic_db_app_public.runtime_schedules 
  DROP COLUMN created_at RESTRICT;


