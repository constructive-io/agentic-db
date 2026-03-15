-- Deploy: schemas/agent_db_app_public/tables/chats/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/updated_at/alterations/alt0000004333


ALTER TABLE "agent_db_app_public".chats 
  ADD COLUMN title text;

