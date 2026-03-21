-- Revert: schemas/agentic_db_app_public/tables/execution_log/constraints/execution_logs_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.execution_log 
  DROP CONSTRAINT execution_logs_entity_id_fkey;


