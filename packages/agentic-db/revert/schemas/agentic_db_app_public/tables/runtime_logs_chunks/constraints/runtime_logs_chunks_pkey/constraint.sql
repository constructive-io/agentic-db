-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/constraints/runtime_logs_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  DROP CONSTRAINT runtime_logs_chunks_pkey;


