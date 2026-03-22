-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/constraints/runtime_logs_pkey/constraint


ALTER TABLE agentic_db_app_public.runtime_logs 
  DROP CONSTRAINT runtime_logs_pkey;


