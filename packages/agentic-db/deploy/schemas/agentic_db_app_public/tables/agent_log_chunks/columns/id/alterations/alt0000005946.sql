-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/id/alterations/alt0000005946
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/triggers/agent_task_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.agent_log_chunks 
  ALTER COLUMN id SET NOT NULL;

