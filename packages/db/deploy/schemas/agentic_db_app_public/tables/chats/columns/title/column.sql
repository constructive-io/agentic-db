-- Deploy: schemas/agentic_db_app_public/tables/chats/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/updated_at/alterations/alt0000001144


ALTER TABLE "agentic_db_app_public".chats 
  ADD COLUMN title text;

