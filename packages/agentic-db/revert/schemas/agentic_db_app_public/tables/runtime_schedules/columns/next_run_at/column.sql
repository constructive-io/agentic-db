-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/next_run_at/column


ALTER TABLE agentic_db_app_public.runtime_schedules 
  DROP COLUMN next_run_at RESTRICT;


