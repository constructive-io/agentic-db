-- Deploy: schemas/agent_db_app_public/tables/chats/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/updated_at/alterations/alt0000001996


ALTER TABLE "agent_db_app_public".chats 
  ADD COLUMN title text;

