-- Deploy: schemas/agentic_db_app_public/tables/chats/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.chats 
  ADD COLUMN embedding vector(768);

