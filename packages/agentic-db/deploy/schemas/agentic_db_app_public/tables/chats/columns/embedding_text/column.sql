-- Deploy: schemas/agentic_db_app_public/tables/chats/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/started_at/column


ALTER TABLE "agentic_db_app_public".chats 
  ADD COLUMN embedding_text text;

