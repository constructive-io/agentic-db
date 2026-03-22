-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/constraints/agent_log_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.agent_log_chunks 
  DROP CONSTRAINT agent_log_chunks_entity_id_fkey;


