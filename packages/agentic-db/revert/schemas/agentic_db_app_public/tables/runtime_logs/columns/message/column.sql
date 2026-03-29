-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/message/column


ALTER TABLE agentic_db_app_public.runtime_logs 
  DROP COLUMN message RESTRICT;


