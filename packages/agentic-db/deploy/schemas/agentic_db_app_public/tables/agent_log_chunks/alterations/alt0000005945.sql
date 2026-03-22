-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/alterations/alt0000005945
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/triggers/agent_task_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.agent_log_chunks 
  DISABLE ROW LEVEL SECURITY;

