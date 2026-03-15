-- Deploy: schemas/agent_db_app_public/tables/threads/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/parent_thread_id/column


ALTER TABLE agent_db_app_public.threads 
  ADD COLUMN embedding_text text;

