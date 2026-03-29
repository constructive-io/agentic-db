-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/cron_expression/column


ALTER TABLE agentic_db_app_public.runtime_schedules 
  DROP COLUMN cron_expression RESTRICT;


