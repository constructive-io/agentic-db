-- Deploy: schemas/agent_db_app_public/tables/chats/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/embedding_text/column


ALTER TABLE agent_db_app_public.chats 
  ADD COLUMN embedding vector(768);

