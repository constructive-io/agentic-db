-- Deploy: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/updated_at/alterations/alt0000005939


ALTER TABLE agentic_db_app_public.agent_task_chunks 
  ADD COLUMN chunk_index int;

