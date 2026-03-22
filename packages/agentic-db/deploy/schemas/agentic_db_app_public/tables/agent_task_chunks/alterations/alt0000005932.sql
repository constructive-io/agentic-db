-- Deploy: schemas/agentic_db_app_public/tables/agent_task_chunks/alterations/alt0000005932
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/triggers/agent_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.agent_task_chunks 
  DISABLE ROW LEVEL SECURITY;

