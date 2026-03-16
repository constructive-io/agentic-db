-- Deploy: schemas/agent_db_app_public/tables/chats/alterations/alt0000001989
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agent_db_app_public".chats 
  DISABLE ROW LEVEL SECURITY;

