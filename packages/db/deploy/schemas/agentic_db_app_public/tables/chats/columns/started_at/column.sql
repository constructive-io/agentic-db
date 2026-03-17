-- Deploy: schemas/agentic_db_app_public/tables/chats/columns/started_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/title/column


ALTER TABLE "agentic_db_app_public".chats 
  ADD COLUMN started_at timestamptz;

