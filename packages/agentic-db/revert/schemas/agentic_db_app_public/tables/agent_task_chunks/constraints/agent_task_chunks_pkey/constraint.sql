-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/constraints/agent_task_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.agent_task_chunks 
  DROP CONSTRAINT agent_task_chunks_pkey;


