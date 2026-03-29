-- Revert: schemas/agentic_db_app_public/tables/agent_logs/constraints/agent_logs_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.agent_logs 
  DROP CONSTRAINT agent_logs_entity_id_fkey;


