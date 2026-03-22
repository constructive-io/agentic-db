-- Deploy: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/agent_task_id/alterations/alt0000005961
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/indexes/agent_chunks_agent_id_idx
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/agent_task_id/column


ALTER TABLE agentic_db_app_public.agent_task_chunks 
  ALTER COLUMN agent_task_id SET NOT NULL;

