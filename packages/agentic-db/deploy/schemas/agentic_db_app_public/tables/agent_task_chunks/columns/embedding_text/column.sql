-- Deploy: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/content/alterations/alt0000005941


ALTER TABLE agentic_db_app_public.agent_task_chunks 
  ADD COLUMN embedding_text text;

