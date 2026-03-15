-- Deploy: schemas/agent_db_app_public/tables/chats/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/started_at/column


ALTER TABLE "agent_db_app_public".chats 
  ADD COLUMN embedding_text text;

